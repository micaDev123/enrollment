<div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-info">
                            <div class="panel-heading">
							
							Add Enrollees
                            <div class="pull-right"><a href="#" data-perform="panel-collapse"><i class="fa fa-plus"></i>&nbsp;&nbsp;ADD New Enrollees<i class="btn btn-info btn-xs"></i></a> <a href="#" data-perform="panel-dismiss"></a> </div>
                            </div>
                            <div class="panel-wrapper collapse out" aria-expanded="true">
                                <div class="panel-body">
                <?php echo form_open(base_url().'admin/studentEnrollment/create/' , array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
	
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
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('Section');?></label>
                    <div class="col-sm-12">
                    <select name="section_id" id="section_id" class="form-control select2" onchange="return get_class_subject(this.value)">
                    <option value=""><?php echo get_phrase('select_section');?></option>

                    <?php $section =  $this->db->get('section')->result_array();
                    foreach($section as $key => $section):?>
                    <option value="<?php echo $section['section_id'];?>">
                    <?php echo $section['section_name'];?></option>
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

               <div class="form-group">
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
                </div>



                <!-- <div class="form-group">
                <label class="col-sm-12"><?php echo get_phrase('select_grade_level'); ?></label>

                <div class="col-sm-12">
                <select name="section_id" class="form-control select2" onchange="subjectOnkeyUp(this.value)" required>
                <option value=""><?php echo get_phrase('select_grade'); ?></option>
                <?php
                $gradeLevel = $this->db->get('section')->result_array();
                foreach ($gradeLevel as $row): ?>
                <option value="<?php echo $row['description_id']; ?>">
                <?php echo $row['grade_level']; ?>
                </option>
                <?php endforeach; ?>
                </select>
                </div> 
                </div>

                <div class="form-group">
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
    </div>  
  
  
  
  
  <div class="row">
                    <div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-list"></i>&nbsp;&nbsp;<?php echo get_phrase('list_of_enrollees');?></div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body table-responsive">
								
<table id="example23" class="display nowrap" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>#</th>
            <th><?php echo get_phrase('file_type');?></th>
            <th><?php echo get_phrase('Name');?></th>
            <th><?php echo get_phrase('Section');?></th>
            <th><?php echo get_phrase('date_enrolled');?></th>
            <th><?php echo get_phrase('Grade level');?></th>
            <th><?php echo get_phrase('status');?></th>
            <th><?php echo get_phrase('options');?></th>
        </tr>
    </thead>

    <tbody>

    <?php $counter = 1; $exam_questions = $this->db->get('enrollment')->result_array();
                foreach($exam_questions as $key => $exam_question):?>
            <tr>
                <td><?php echo $counter++;?></td>
                <td>
                <?php if($exam_question['file_type']=='img' || $exam_question['file_type']== 'jpg' || $exam_question['file_type']== 'png'){?>
                <img src="<?php echo base_url();?>optimum/images/image.png" style="max-height:40px;">
                <?php }?>
                <?php if($exam_question['file_type']=='docx'){?>
                <img src="<?php echo base_url();?>optimum/images/doc.jpg" style="max-height:40px;">
                <?php }?>
                <?php if($exam_question['file_type']=='pdf'){?>
                <img src="<?php echo base_url();?>optimum/images/pdf.jpg" style="max-height:40px;">
                <?php }?>
                <?php if($exam_question['file_type']=='xlsx'){?>
                <img src="<?php echo base_url();?>optimum/images/text.png" style="max-height:40px;">
                <?php }?>
                <?php if($exam_question['file_type']=='txt'){?>
                <img src="<?php echo base_url();?>optimum/images/text.png" style="max-height:40px;">
                <?php }?>

              
                </td>
                <td><?php echo $this->db->get_where('student', array('student_id' => $exam_question['student_id']))->row()->name;?></td>
                <td><?php echo $this->db->get_where('section', array('section_id' => $exam_question['section_id']))->row()->section_name;?></td>
                <td><?php echo $exam_question['date_of_enrollment'];?></td> 
                <td><?php echo $exam_question['grade_level'];?></td>
                <!-- <td><?php echo $this->db->get_where('teacher', array('teacher_id' => $exam_question['teacher_id']))->row()->name;?></td> -->
                <!-- <td><?php echo $exam_question['description'];?></td> -->
                <td>
                <span class="label label-<?php if($exam_question['status']== '0') echo 'warning'; elseif($exam_question['status']== '1') echo 'success'; else echo 'danger';?>">
                
                <?php if($exam_question['status']== '0'):?>
                Pending...
                <?php endif;?>

                <?php if($exam_question['status']== '1'):?>
                Enrolled
                <?php endif;?>

                <?php if($exam_question['status']== '2'):?>
                Disapproved
                <?php endif;?>


                </span>
                </td> 
                <td>
                <a href="<?php echo base_url().'uploads/enrollment/'. $exam_question['file_name'];?>"><button type="button" class="btn btn-info btn-circle btn-xs" ><i class="fa fa-download"></i></button></a>
                    <a  onclick="showAjaxModal('<?php echo base_url();?>modal/popup/student_enrollment_edit/<?php echo $exam_question['enrollment_id'];?>');" >
                    <button type="button" title="Enroll Student" class="btn btn-success btn-circle btn-xs"><i class="fa fa-pencil"></i></button></a>
					 <a href="<?php echo base_url();?>admin/studentEnrollment/delete/<?php echo $exam_question['enrollment_id'];?>" ><button type="button" class="btn btn-danger btn-circle btn-xs" onclick="return confirm('Are you sure to delete?');"><i class="fa fa-times"></i></button></a>
					
                </td>
            </tr>
    <?php endforeach;?>
    </tbody>
</table>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">

function get_class_subject(class_id){
    $.ajax({
        url:        '<?php echo base_url();?>admin/get_class_subject/' + class_id,
        success:    function(response){
            jQuery('#subject_selector_holder').html(response);
        } 

    });
}

function subjectOnkeyUp(description_id) {
        if(description_id != '')
            $.ajax({
                url: '<?php echo base_url();?>admin/get_subject/' + description_id,
                success: function(response)
                {
                    console.log(response);
                    jQuery('#subject_holder').html(response);
                }
            });
        else
            jQuery('#subject_holder').html('<option value=""><?php echo get_phrase("select_grade_first"); ?></option>');
    }

</script>