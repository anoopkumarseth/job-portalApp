import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoginService } from './services/login.service';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'job_search_engineApp';
  login = true;
  isLoggedIn = false;
  loginAttempt = false

  constructor(private loginservice:LoginService) {}
  userData = {
    "name":"",
    "email":"",
    "password":"",
    "createdAt":"2024-11-01",
    "isActive":true,
    "message":"22"
  }
  loginUserObj = {
    "email": "anoop.seth@gmail.com",
    "password": "123456@13"
  }
  
  saveData(type:string){
    console.log("test");
    if(type == 'user'){
      this.loginservice.postData(this.userData).subscribe((data)=>{
        console.log(data);
        
      })
    }
    
  }

  loginUser(){
    this.loginAttempt = true
    this.loginservice.postData(this.loginUserObj, true).subscribe((data)=>{
      this.isLoggedIn = data;
      if(data){
        this.getJobs();
        localStorage.setItem("userDetails", JSON.stringify(this.loginUserObj))
      }
    })
  }

  jobList:any = []
  getJobs(){
    this.loginservice.getJobs().subscribe((data)=>{
      
      console.log(data);
      this.jobList = data
    })
  }


  applyJob(applicationId:string){
    let payload = {
      "jobID":applicationId,
      "userID":"6",
      "resume":"3",
      "salary":"4000",
      "applicationDate":"2024-02-10",
      "status":1
  }

    this.loginservice.applyJob(payload).subscribe((data)=>{
      this.jobList =  this.jobList.filter((job: { jobId: any; }) => job.jobId !== applicationId);
      console.log(data);
      alert("Applied for the job")
      this.appliedJob()
    })
  }


  appliedJobs:any = []
  appliedJob(){
   

    this.loginservice.appliedJob().subscribe((data)=>{
      console.log(data);
      this.appliedJobs = data
    })
  }
}
