
async function fetchQuestionsJSON() {
    const response = await fetch('http://localhost:8080/perguntas');
    const questions = await response.json();
    return questions;
  }
  fetchQuestionsJSON().then(questions => {
    questions; // fetched questions
    dados = questions
    
});

 
let local = document.querySelector('#local')

function firstQuestion(){
  
    let options = document.querySelector('#level').value.toLowerCase()

    document.querySelector('#carouselExampleInterval').style.display = 'none'

    switch (options) {
        case "ideação":
            nextQuestion(1)
        break;

        case "prototipo":
            nextQuestion(4)
        break;
        case "none":
            nextQuestion(10)
        break;
        default:
            document.querySelector("#teste").style.display = 'none'
            local.innerHTML = `
            <div class="div-wid">
            <img src="images/cancel.svg" class="cancel-img">
                <div class="label-question mt-4">
                    Ops… Você está em um nível mais avançado, que ainda não estamos trabalhando! Parabéns! Não é fácil chegar a essa fase, ein? Que tal rever algumas etapas iniciais e revisar se não tem nenhum ajuste no seu negócio que pode ser feito? =D  
                    <div>
                    <button class="button-back mt-3" onclick="backForm()">Voltar</button>
                    </div> 
            </div>            
            </div>`
        break;
       
      }

    
}
function backForm(){
    document.querySelector('#carouselExampleInterval').style.display = 'block';
    document.querySelector("#teste").style.display = 'block';
    local.innerHTML = '';
}




function nextQuestion(id){
 
    if (Number(id)){
       
        local.innerHTML = ""
        
        var label = document.createElement("label");
        label.classList.add("label-question", "mt-4");
        label.appendChild(document.createTextNode(dados[id]['question']));
        local.appendChild(label);
    
        let respostas = JSON.parse(dados[id]['answers'])
        let proxima = JSON.parse(dados[id]['nextid'])
        let divNova = document.createElement("div");
        for(i=0;i<respostas.length;i++){
            let x = document.createElement("INPUT");
            x.setAttribute("type", "radio");
            
            x.setAttribute("id", "r"+i);
            x.setAttribute("name", "radio");
            if( Number(proxima[i])){
                x.setAttribute("onclick", "nextQuestion("+(proxima[i]-1)+")");
            }else{
               x.setAttribute("onclick", "nextQuestion('"+proxima[i]+"')");
            }
           
    
            let label = document.createElement('label');
            label.setAttribute("value",respostas[i])
            label.classList.add('answer');
            label.setAttribute("for","r"+i)
            label.innerText = respostas[i]
    
            divNova.appendChild(x);
            divNova.appendChild(label);
    
            console.log(respostas[i])
        }
        local.appendChild(divNova)
    }else{
        local.innerHTML = ""
        document.getElementsByClassName('wrap')[0].style.display = 'none'
        document.querySelector('#result').style.display = 'flex'
        document.querySelector('.question').innerText = 'Resultado do Questionário Inicial'
        document.querySelector('.question').style.paddingLeft = '20px'
     
        var trail = document.querySelector('.trail')
        let desc = document.querySelector('.desc')
         id = id.toLowerCase();
         if (id == "persona"){
             trail.innerHTML = "Trilha a partir da Persona"
             desc.innerHTML = 'Persona é a representação fictícia do cliente ideal de um negócio. É baseada em dados reais sobre comportamento e características demográficas dos clientes, assim como histórias pessoais, motivações, objetivos, desafios e preocupações. A persona guia a criação de conteúdo e de Marketing Digital.'
         }else if (id == "proposta de valor"){
             trail.innerHTML = "Trilha a partir da Proposta de Valor"
             desc.innerHTML = 'A proposta de valor nada mais é que uma prática que visa levar ao seu potencial cliente uma ideia concisa, clara e transparente a respeito de como determinado produto ou serviço será relevante para ele. Definir essa ideia é essencial para iniciar um novo negócio.'
         }else if (id == "prototipação"){
             trail.innerHTML = "Trilha a partir da Prototipação"
             desc.innerHTML = 'A prototipação é uma forma de visualizar a sua ideia antes mesmo de tirá-la do papel. Ela é de extrema importância para startups, uma vez que evita maiores gastos no desenvolvimento.'
         
         }else if (id == "mvp"){
             trail.innerHTML = "Trilha a partir de MVP"
             desc.innerHTML = 'MVP é a sigla de Minimum Viable Product e significa produto mínimo viável. É uma prática de administração de empresas que consiste em lançar um novo produto ou serviço com o menor investimento possível, para testar o negócio antes de aportar grandes investimentos.'
         }else if (id == 'validação'){
             trail.innerHTML = "Trilha de Validação"
             desc.innerHTML = 'Validação de startup nada mais é do que quando você comprova que uma hipótese é verdadeira. Ou seja, verificar se os seus “achismos” são reais através de provas concretas validadas pelo mercado. Isso porque não adianta você querer vender um determinado produto se não tiver público interessado e precisando dele.'
         
         }else if (id == 'produto'){
             trail.innerHTML = "Trilha de produto"
             desc.innerHTML = 'O desenvolvimento do produto é uma etapa muito importante para qualquer empresa. Desde a escolha do tipo de desenvolvimento a seguir, até à definição do dia de lançamento deste, o empreendedor tem várias responsabilidades a tomar.'
         }else if (id == 'descobrimento do problema'){
             trail.innerHTML = "Trilha a partir do descobrimento do problema"
             desc.innerHTML = 'Pense em alguns desafios que te instigam a sugerir uma solução e que sejam desafios relevantes para um grupo consideravel de pessoas!'
         }else if (id == 'validação da ideia'){
             trail.innerHTML = "Trilha a partir de validação da ideia"
             desc.innerHTML = 'A validação de ideias é uma das coisas mais importantes para qualquer empreendedor que quer começar um novo negócio ou também para você que quer lançar um produto novo. Sabia que no Brasil, segundo algumas pesquisas, 40% das startups fecham porque lançam produtos que ninguém quer comprar? Pense em alguns desafios que te instigam a sugerir uma solução e que sejam desafios relevantes para um grupo consideravel de pessoas.'
     
         }else if (id == 'ideção'){
             trail.innerHTML = "Trilha a partir da ideação"
             desc.innerHTML = 'Ideação é a terceira etapa do Design Thinking e é marcada por ser o momento onde acontece o brainstorming sobre o projeto e sobre as propostas para solucionar o problema apresentado.'
         }
    }
   
}


function mainPage(){
    window.open("/pages/main-page/index.html", target="_self");
}


document.querySelector('#level').addEventListener('change',firstQuestion);

document.querySelector('#btn-enter').addEventListener('click',mainPage);