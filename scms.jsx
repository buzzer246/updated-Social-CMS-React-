import React, { useState } from 'react';

const Socialscms = () => {



    const[newdetails, updateDetails] = useState("");
    const[user, pickUsername] = useState("");
    const[mobile, updateMobile] = useState("");
    const[pass,updatePassword] = useState("");
    const[rpass,updateRepass] = useState("");
    const[murl, updateMediaurl] = useState("");
    const[cmnt,updateComment] = useState("");
    const[addr,updateAdress] = useState("");
    const[img,updateImage] = useState("");
    const[age,updateAge] = useState("");
    const[msg, updateMessage] = useState("");
    
   
    let[errorlist, updateError] = useState("");
    const save = () =>{
        
        let allerror = {};
        var formStatus = true;
        if(user ==""){
            allerror['nameError'] = "Invalid Username !";
            formStatus = false;
        }else{
            allerror['nameError'] = "";
        }

        //validation for password
        if(pass == "" || pass <1){
            allerror['passError'] = "Invalid UserPassword !";
            formStatus = false;
        }else{
            allerror['passError'] = "";
        }

            //validation for photo
            if(img == ""){
                allerror['photoError'] = "Invalid User Photo !";
                formStatus = false;
            }else{
                allerror['photoError'] = "";
            }
                //validation for mobile
            if(mobile == "" || mobile<2){
                allerror['mobileerror'] = "Invalid Mobile Number !";
                formStatus = false;
            }else{
                allerror['mobileerror'] = "";
            }

            //validation for media url
            if(murl == ""){
                allerror['mediaerror'] = "Invalid URL!";
                formStatus = false;
            }else{
                allerror['mediaerror'] = "";
            }

                //validation for age
                if(age == ""){
                    allerror['ageerror'] = "Invalid Age !";
                    formStatus = false;
                }else{
                    allerror['ageerror'] = "";
                }

            //validation for Details
            if(cmnt == ""){

                allerror['detailsError'] = "Invalid Comments !";
                formStatus = false;
            }else{
                allerror['detailsError'] = "";
            }

        updateError(allerror);
        if(formStatus==true){
            //alert("Success: Data is processing to server");
            updateMessage("Please Wait Processing to Server...");
        var data = {"username":user,"mobile":mobile,"password":pass,"retypepass":rpass,"mediaurl":murl,"images":img,"age":age,"comments":cmnt,"permanentaddress":addr};
        var postData ={
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(data)
        }
        fetch("http://localhost:1234/savescms", postData)
        .then(response=>response.text())
        .then(message=>{
            
            updateMessage(message);
            console.log(message);
            getscms();
            pickUsername("");
            updateMobile("");
            updatePassword("");
            updateRepass("");
            updateMediaurl("");
            updateImage("");
            updateComment("");
            updateAge("");
            updateAdress("");
             
        })
    }
 
}
    const getscms = () => {
        fetch("http://localhost:1234/scms")
            .then(response => response.text())
            .then(alluser => {
                if (alluser.length > 0) {
                    updateMessage(alluser);
                }
             
          })
        }
    
const clear =() =>{

    window.location.href="http://localhost:5500/";
    window.localStorage.clear();
    window.location.reload();
}

    
    return (

        <div className="container-fluid justify-content-center mt-5 border border-3 rounded-top w-50 p-3 shadow p-3 mb-5 bg-body rounded">

            <h4 className="text-success mb-4"><strong>Welcome to Social SCMS, please Register Here..!</strong></h4>
            <strong> <hr className="text-success" size="8"></hr></strong>
            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Enter the Username/ Email-id</strong></label>
                <input type="text" className='form-control' maxLength="30" onChange={obj => pickUsername(obj.target.value)} value={user} placeholder="Enter the Username/Email" required />
                <i className ='text-danger'>{errorlist.nameError}</i>
            </div>
            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Mobile Number</strong></label>
                <input type="number" className='form-control' maxLength="20" onChange={obj => updateMobile(obj.target.value)} value={mobile} placeholder="Enter the MobileNo"  />
                <i className ='text-danger'>{errorlist.mobileerror}</i>
            </div>
            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Enter the Your Password </strong></label>
                <input type="password" className='form-control' maxLength="35" onChange={obj => updatePassword(obj.target.value)} value={pass} placeholder="Enter the password"  />
                <i className ='text-danger'>{errorlist.passError}</i>
            </div>
            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Retype the Password </strong></label>
                <input type="password" className='form-control' maxLength="30" onChange={obj => updateRepass(obj.target.value)} value={rpass} placeholder="Confirm the Password" />
                <i className ='text-danger'>{errorlist.passError}</i>
            </div>
            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Enter the Comments </strong></label>
                <textarea maxLength="200" height={"300"} onChange={obj => updateComment(obj.target.value)} value={cmnt}>

                </textarea>
                <i className ='text-danger'>{errorlist.detailsError}</i>
            </div>

            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Enter the Media Url </strong></label>
                <input type="text"  onChange={obj => updateMediaurl(obj.target.value)} value={murl} placeholder="Enter the Custome URl" />
                <i className ='text-danger'>{errorlist.mediaerror}</i>
            </div>
            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Upload Image</strong></label>
                <input type="text" className='form-control'  onChange={obj => updateImage(obj.target.value)} value={img} />
                <i className ='text-danger'>{errorlist.photoError}</i>
            </div>
            <div className="row mb-4">
                <label className="form-control-lg text-info mb-3 text-center"><strong>Client Age </strong></label>
                <input type="number" className='form-control'  maxLength="4" onChange={obj => updateAge(obj.target.value)} value={age} placeholder="Enter the Your Age" />
                <i className ='text-danger'>{errorlist.ageerror}</i>
            </div>
            <div className="row mb-4">
                <label className="form-control-md text-info mb-3 text-center"><strong>Enter the Permanent Address</strong></label>
                <input type="text"className='form-control' maxLength="30" onChange={obj => updateAdress(obj.target.value)} value={addr} placeholder="Enter the Address" />
                <i className ='text-danger'>{errorlist.detailsError}</i>
            </div>


            <button className="btn btn-primary mb-3" onClick={save}>Save Details</button>
            <button className="btn btn-danger ms-3 mb-3" onClick={clear}>Cancel</button>

            <div className="container">
                    <div className="row mb-4">
                  { <small> You have Enter:

                            {user},
                            {mobile},
                            {pass},
                            {rpass},
                            {cmnt},
                            {murl},
                            {img},
                            {age},
                            {addr}
                        </small>
                     }
                    </div>
                </div>
           
        </div>

    )
    
                        
}

export default Socialscms;