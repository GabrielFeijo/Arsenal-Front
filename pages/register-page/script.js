

page = 'first';
  

$("#phone").mask("(00) 0 0000-0000");
$("#CPF").mask('000.000.000-00');
$("#CEP").mask('00000-000');

function formContinue(e){
    e.preventDefault();
   
    if (page == 'first'){
       let info = true;
        for (i=0; i<4;i++){
            if (document.getElementsByClassName('input')[i].value.length == ''){
                info = false;
               showAlert("danger","Erro!","Preencha todas as informações.");
                
                break;
            }
        }
        if (!validateEmail(document.getElementById('mail').value)){
            info = false;
            showAlert("danger","Erro!","Email inválido!");
          
           
        }
        if (info == true){

            if (document.getElementsByClassName('input')[2].value != document.getElementsByClassName('input')[3].value){      
                showAlert("primary","Info!","As senhas digitadas não coincidem!");
                    
            }else{
                document.getElementById('first-infos').style.display = 'none';
                document.getElementById('second-infos').style.display = 'block';
                page = 'second';
            }

        }
     
    }else if (page == 'second'){

        let info = true;
        for (i=4; i<8;i++){
            if (document.getElementsByClassName('input')[i].value.length == ''){
                info = false;
                showAlert("danger","Erro!","Preencha todas as informações.");
                break;
            }
        }
        if (info == true){
            document.getElementById('second-infos').style.display = 'none';
         
           

            document.getElementById('adress').style.display = 'block';
            document.getElementsByClassName('info-register')[0].innerHTML = 'Endereço'
            document.getElementsByClassName('small-info')[0].innerHTML = 'Endereço'
          
            page = 'adress';
        }

        
     
    }else if (page == 'adress'){
        let info = true;
        let adress = true;
         for (i=8; i<10;i++){
             if (document.getElementsByClassName('input')[i].value.length == ''){
                 info = false;
             showAlert("danger","Erro!","Preencha todas as informações.");
                break;
             }
        }

        for (i=0; i<4;i++){
            if (document.getElementsByClassName('input-adress')[i].value.length == ''){
                adress = false;
                showAlert("danger","Erro!","Preencha todas as informações.");
                break;
            }
        }
        if (info == true && adress == true){
            if (document.querySelector("#flexCheckDefault").checked == false){
                showAlert("warning","Alerta!","Você precisa ler e concordar com os Termos de Uso!");
            }else{

           
                cadastrar();
                
            }
           
        }
    }
}

function cadastrar(){
    fetch("http://localhost:8080/usuarios",
        {
            headers:{
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            method: "POST",
            body: JSON.stringify({
                "name": document.getElementsByName('nome')[0].value,
                "email": document.getElementsByName('email')[0].value,
                "pass": document.getElementsByName('senha')[0].value,
                "phonenumber": document.getElementsByName('phone')[0].value,
                "birthdate": document.getElementsByName('nascimento')[0].value,
                "schooling": document.getElementsByName('escolaridade')[0].value,
                "gender": document.getElementsByName('genero')[0].value,
                "cpf": document.getElementsByName('cpf')[0].value
            })
        })
        .then(res => {
            if (res.ok) {
                return res.json();
        
             
            } else if (res.status == 400){
                
                showAlert("danger","Erro!","Email ou CPF já estão sendo utilizados!");
                return "erro";
            }else{
                console.log(res)
                return Promise.reject({ status: res.status, statusText: res.statusText });
            }
          })
            .then(res => {
                if (Number(res['userid'])){
                    saveAdress( res['userid'])  
                }   
            }                      
            )
            .catch(err => console.log('Error, with message:', err));
        

            
}
function saveAdress(ownerid){
           
    fetch("http://localhost:8080/enderecos",
    {  
       headers:{
           "Accept": "application/json",
           "Content-Type": "application/json"
       },
       method: "POST",
       body: JSON.stringify({
           "ownerid":ownerid,
           "city": document.getElementsByName('city')[0].value,
           "streetadress": document.getElementsByName('streetAdress')[0].value,
           "number": Number(document.getElementsByName('number')[0].value),
           "complement": document.getElementsByName('complement')[0].value,
           "uf": document.getElementsByName('UF')[0].value,
           "cep": document.getElementsByName('CEP')[0].value
       
       })
   })
  
   .then(res => {
    if (res.ok) {
        
        showAlert("success","Sucesso!","Cadastro realizado com sucesso!");
        setTimeout(function() {   window.open("../form/index.html", target="_self");}, 600);
    }
    })
    .catch(err => console.log('Error, with message:', err));
}


function returnPage(e){
   e.preventDefault();
    if (page == 'first'){
        window.open("../login-page/index.html","_self")
    }else if (page == 'second'){
        document.getElementById('first-infos').style.display = 'block';
        document.getElementById('second-infos').style.display = 'none';
        page = 'first';
    }else if (page == 'adress'){
        document.getElementById('adress').style.display = 'none';
        document.getElementById('second-infos').style.display = 'block';
        document.getElementsByClassName('info-register')[0].innerHTML = 'Preencha com suas informações pessoais'
        document.getElementsByClassName('small-info')[0].innerHTML = 'Preencha com suas informações pessoais'
        page = 'second'
       
       

    }
}
function validateEmail(email) {
    var re = /\S+@\S+\.\S+/;
    return re.test(email);
}

function showPass(){
    let x = document.getElementsByClassName('input')[2];

    if (x.type === "password") {
        x.type = "text";
      } else {
        x.type = "password";
    }
}


document.querySelector('#flexCheckPass').addEventListener('click', showPass)
document.getElementById('continue').addEventListener('click', formContinue);
document.getElementById('return').addEventListener('click',returnPage);