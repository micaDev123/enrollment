
<div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-info">
                            <div class="panel-heading">
							
							Enrollment Form
                            <div class="pull-right"><a href="#" data-perform="panel-collapse"><i class="fa fa-plus"></i>&nbsp;&nbsp;</a> <a href="#" data-perform="panel-dismiss"></a> </div>
                            </div>
                            <div class="panel-wrapper collapse out" aria-expanded="true">
                                <div class="panel-body">
                <?php echo form_open(base_url().'student/enrollees/create' , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
	
                <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Student Name');?></label>
                    <div class="col-sm-12">
					   <select name="student_id" class="form-control select2" style="width:100%;" required>
										<option value=""><?php echo get_phrase('select');?></option>

                           <?php $student =  $this->db->get('student')->result_array();
                                    foreach($student as $key => $student):?>         	
                                    		<option value="<?php echo $student['student_id'];?>"><?php echo $student['name'];?></option>
                            <?php endforeach;?>
                        </select>              
                    </div> 
                </div>

                <!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Student Name');?></label>
                    <div class="col-sm-12">
                                    <input type="text" name="student_id" value="<?php  
                                $account_type   =   $this->session->userdata('login_type');
                                $account_id     =   $account_type.'_id';
                                $name           =   $this->crud_model->get_student_id($student_id , $this->session->userdata($account_id), 'student_id');
                                echo $name;
                        ?>"class="form-control"  / readonly>
                        </div>
                    </div> -->

                    



                    <!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('class');?></label>
                    <div class="col-sm-12">
                    <select name="class_id" id="class_id" class="form-control select2" onchange="return get_class_subject(this.value)">
                    <option value=""><?php echo get_phrase('select_class');?></option>

                    <?php $class =  $this->db->get('class')->result_array();
                    foreach($class as $key => $class):?>
                    <option value="<?php echo $class['class_id'];?>"><?php echo $class['name'];?></option>
                    <?php endforeach;?>
                   </select>

                  </div>
                 </div> -->

								
					<!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('subject');?></label>
                    <div class="col-sm-12">
                    <select name="subject_id" class="form-control" id="subject_selector_holder">
                    <option value=""><?php echo get_phrase('select_subject');?></option>
                    </select>
                  </div>
                 </div> -->

<!-- 
				<div class="form-group">
                 	<label class="col-md-12" for="example-text" readonly><?php echo get_phrase('select_date');?></label>
                    <div class="col-sm-12">

                 	<input type="date" name="date_of_enrollment" value="<?php echo date('Y-m-d');?>" class="form-control datepicker" id="example-date-input" required>
				   
                    </div>
                </div> -->

               <!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('select_teacher');?></label>
                    <div class="col-sm-12">
                       
					   <select name="teacher_id" class="form-control select2" style="width:100%;" required>
										<option value=""><?php echo get_phrase('select');?></option>

                           <?php $teacher =  $this->db->get('teacher')->result_array();
                                    foreach($teacher as $key => $teacher):?>         	
                                    		<option value="<?php echo $teacher['teacher_id'];?>"><?php echo $teacher['name'];?></option>
                            <?php endforeach;?>
                                     
                                    </select>              
					    
						
                    </div> 
                </div> -->


                <!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('file_type');?></label>
                    <div class="col-sm-12">
                       
					   <select name="file_type" class="form-control select2" style="width:100%;" required>
										<option value=""><?php echo get_phrase('file_type');?></option>

                           
                                    		<option value="pdf">PDF</option>
                                            <option value="xlsx">Excel</option>
                                            <option value="docx">Word Document</option>
                                            <option value="img">Image</option>
                                            <option value="txt">Text File</option>
                          
                                     
                                    </select>              
					    
						
                    </div> 
                </div> -->


            
                       
					<input type="hidden" name="status" value="0" class="form-control" />
					    
					


				
				
				<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Remarks');?></label>
                    <div class="col-sm-12">
                                <textarea  name="description" class="form-control textarea_editor"></textarea>
                            </div>
                        </div>
				
				
							
					<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('select_document');?></label>
                    <div class="col-sm-12">
                    <input type="file" name="file_name" class="dropify" required>
                    </div></div>
							
						

                    
                    <div class="form-group">
							<button type="submit" class="btn btn-info btn-block btn-sm btn-rounded"> <i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('Submit');?></button>
					</div>
					<br>
                <?php echo form_close();?>	
									
									
                                </div>
                            </div>
                        </div>
                    </div>
				</div>  

<!-- 
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-info">

                        <div class="panel-wrapper collapse in" aria-expanded="true">
                        <div class="panel-body table-responsive">

                        <div class="printableArea">
        <div align="center">
        <img src="<?php echo base_url();?>uploads/logo.png" width="60px" height="60px" class="img-circle"><br/>
        <span style="text-align:center; font-size:25px"><?php echo $system_name;?></span><br/>
        <span style="text-align:center; font-size:15px"><?php echo $system_address;?></span>
        </div>
        <br>


        <hr>
        <div align="center">  
                 <div align="center">

                        <div class="row panel-body">
                        <div class="col-sm-6">
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                    </div>
                </div> -->
  
</div>
</div>
</div>
</div>




<!-- <script type="text/javascript">

function get_class_subject(class_id){
    $.ajax({
        url:        '<?php echo base_url();?>student/get_class_subject/' + class_id,
        success:    function(response){
            jQuery('#subject_selector_holder').html(response);
        } 

    });
}

</script> -->
