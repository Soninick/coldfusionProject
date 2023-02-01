
 
  <cfquery name="editSingleData" datasource="EMPDATA"> 
    SELECT * FROM employee_details </cfquery>
    

    <!--- <cfdump var="#editSingleData#">
    <cfabort> --->

<!-- ======= header ======= -->


<cfif isDefined("session.loginId") AND session.loginId NEQ ""> 
  <cfinclude template="header.cfm">
  <!-- ======= Sidebar ======= -->
  <cfinclude template="sidebar.cfm">
  <body>
    <form  method="POST" enctype="multipart/form-data">
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Employees</h1>
    
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Employees</li>
        </ol>
      </nav>

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>
 
                <div class="card-body">
                  <h5 class="card-title">Recent Updates <span>| Today</span></h5>
          
                  <table class="table table-dark">
                    <thead class="table-primary">
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Mobile</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Image</th>
                        <th scope="col">Alter</th>
                      </tr>
                    </thead>
                    <tbody>
                      <cfoutput query = "editSingleData" >
                      <tr>
                        <TD>#Id#</TD>
                        <TD>#editSingleData.first_name# #editSingleData.last_name#</TD>
                        <TD>#editSingleData.email#</TD>
                        <TD>#editSingleData.mobile#</TD>
                        <TD>#editSingleData.gender#</TD>
                        <TD><img src="image/#editSingleData.image#" alt="profile"  class="rounded-circle"  width="35" height="35"></TD>
                        <TD><a  href="addEditEmp.cfm?id=#id#" type="button" class="btn btn-outline-primary"><ion-icon name="pencil-outline" value = "1" ></ion-icon></a>
                          <!--- <cfif isEditpage eq false > --->
                            <a href="deletefile.cfm?id=#id#" type="button" class="btn btn-outline-danger"><ion-icon name="trash-outline" value = "1"></ion-icon></a></TD>
                        </tr>
                      </tbody>
                    </cfoutput>
                  

                   
                  </table>
                

                </div>

              </div>
            </div>


  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
          </form>
</body>

</html>
<cfelse>
  <cflocation url ="pages_login.cfm">
</cfif>