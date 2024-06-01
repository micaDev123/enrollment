<?php $enrollment = $this->db->get_where('enrollment', array('enrollment_id' => $param2))->result_array();
            foreach($enrollment as $key => $enrollment):?>
<div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-info">
                            <div class="panel-heading">Edit Enrollees</div>
                                <div class="panel-body">
                <?php echo form_open(base_url().'admin/studentEnrollment/update/'. $param2 , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
	


              <!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Student Name');?></label>
                    <div class="col-sm-12">
                                    <input type="text" class="form-control" name="name" / required>
                        </div>
                    </div> -->

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

                    <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Year & Grade Level');?></label>
                    <div class="col-sm-12">
                    <select name="section_id" id="section_id" class="form-control select2" onchange="return get_class_subject(this.value)">
                    <option value=""><?php echo get_phrase('select_section');?></option>

                    <?php $section =  $this->db->get('class')->result_array();
                    foreach($section as $key => $section):?>
                    <option value="<?php echo $section['class_id'];?>">
                    <?php echo $section['name'];?></option>
                    <?php endforeach;?>
                   </select>

                  </div>
                 </div>


				<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('date_enrollment');?></label>
                    <div class="col-sm-12">

                 	<input type="date" name="date_of_enrollment" value="<?php echo date('Y-m-d');?>" class="form-control datepicker" id="example-date-input" required>
				   
                    </div>
                </div>

               <!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('select_grade_level');?></label>
                    <div class="col-sm-12">         
                                    
                                    

                    <select name="grade_level" class="form-control select2" style="width:100%;" required>
                    <option value=""><?php echo get_phrase('select_grade');?></option>
                    <option value="7"><?php echo get_phrase('7');?></option>
                    <option value="8"><?php echo get_phrase('8');?></option>
                    <option value="9"><?php echo get_phrase('9');?></option>
                    <option value="10"><?php echo get_phrase('10');?></option>
                    <option value="11"><?php echo get_phrase('11');?></option>
                    <option value="12"><?php echo get_phrase('12');?></option>
                   </select>
					    
						
                    </div> 
                </div> -->



                <div class="form-group">
                <label class="col-sm-12"><?php echo get_phrase('Section'); ?></label>

                <div class="col-sm-12">
                <select name="section_id" class="form-control select2" onchange="subjectOnkeyUp(this.value)" required>
                <option value=""><?php echo get_phrase('select_section'); ?></option>
                <?php
                $gradeLevel = $this->db->get('section')->result_array();
                foreach ($gradeLevel as $row): ?>
                <option value="<?php echo $row['section_id']; ?>">
                <?php echo $row['section_name']; ?>
                </option>
                <?php endforeach; ?>
                </select>
                </div> 
                </div>

                <!-- <div class="form-group">
                <label class="col-sm-12"><?php echo get_phrase('Subject'); ?></label>

                <div class="col-sm-12">
                <select name="subject_id" class="form-control select2" id="subject_holder">
                <option value=""><?php echo get_phrase('select_grade_first'); ?></option>
                </select>
                </div> 
                </div> -->






                <div class="form-group">
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
                </div>


                <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('status');?></label>
                    <div class="col-sm-12">
                       
					   <select name="status" class="form-control select2" style="width:100%;" required>
										<option value=""><?php echo get_phrase('status');?></option>

                                            <option value="0">Pending</option>
                                    		<option value="1">Enrolled</option>
                                            <option value="2">Disaprove</option>
                                            
                          
                                     
                                    </select>              
					    
						
                    </div> 
                </div>
<!-- 
                <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Add Subject');?></label>
                    <div class="col-sm-12">
                    <input type="checkbox" name="subject" required>
                    <?php $student =  $this->db->get('subject')->result_array();
                                    foreach($subject as $key => $subject):?>
                                    <input type="checkbox" onclick="toggle(this);" />Check all?<br />         
                                    <input type="checkbox" value="<?php echo $section['section_name'];?>" required>
                            <?php endforeach;?>

                            <?php $section =  $this->db->get('section')->result_array();
                    foreach($section as $key => $section):?>
                    <option value="<?php echo $section['section_id'];?>">
                    <?php echo $section['section_name'];?></option>
                    <?php endforeach;?>
                   </select>
               
				   
                    </div>
                </div> -->



 
				
				
				<!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Remarks');?></label>
                    <div class="col-sm-12">
                                <textarea  name="description" class="form-control textarea_editor"></textarea>
                            </div>
                        </div>
				 -->
				
							
					<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('select_document');?></label>
                    <div class="col-sm-12">
                    <input type="file" name="file_name" class="dropify" required>
                    </div></div>
							
					
                    
                    <div class="form-group">
							<button type="submit" class="btn btn-info btn-block btn-sm btn-rounded"> <i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('Submit New Enrollees');?></button>
					</div>
					<br>
                <?php echo form_close();?>						
									
									
                            </div>
                        </div>
                    </div>
				</div>  
<?php endforeach;?>



<script type="text/javascript">

	function get_class_subject(class_id) {

    	$.ajax({
            url: '<?php echo base_url();?>admin/get_class_subject/' + class_id ,
            success: function(response)
            {
                jQuery('#subject').html(response);
            }
        });

    }

</script>
