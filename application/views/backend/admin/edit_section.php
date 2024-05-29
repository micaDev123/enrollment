<?php $section = $this->db->get_where('section', array('section_id' => $param2))->result_array();
foreach ($section as $key => $section):?>
<div class="row">
                    <div class="col-sm-12">
				  	<div class="panel panel-info">
                            <div class="panel-heading"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('edit_section');?></div>
                                <div class="panel-body table-responsive">
			
<!----CREATION FORM STARTS---->

                	<?php echo form_open(base_url() . 'admin/section/update/' . $param2 , array('class' => 'form-horizontal form-groups-bordered validate','target'=>'_top'));?>
                    <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('grade_level');?></label>
                    <div class="col-sm-12">
                    <select name="grade_level" class="form-control select2" required>
                    
                    <option value=""><?php echo get_phrase('select_level');?></option>
                    <option value="7"<?php if($section['grade_level']== '7') echo 'selected';?>><?php echo get_phrase('7');?></option>
                    <option value="8"<?php if($section['grade_level']== '8') echo 'selected';?>><?php echo get_phrase('8');?></option>
                    <option value="9"<?php if($section['grade_level']== '9') echo 'selected';?>><?php echo get_phrase('9');?></option>
                    <option value="10"<?php if($section['grade_level']== '10') echo 'selected';?>><?php echo get_phrase('10');?></option>
                    <option value="11"<?php if($section['grade_level']== '11') echo 'selected';?>><?php echo get_phrase('11');?></option>
                    <option value="12"<?php if($section['grade_level']== '12') echo 'selected';?>><?php echo get_phrase('12');?></option>
                   
                   </select>

                  </div>
            </div>

            <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('section_name');?></label>
                    <div class="col-sm-12">
                                    <input type="text" class="form-control" value="<?php echo $section['section_name'];?>" name="section_name"/ required>
                                </div>
                            </div>


                            <!-- <div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('class');?></label>
                    <div class="col-sm-12">
                                    <select name="class_id" class="form-control select2" required>
                                     <option value=""><?php echo get_phrase('select_class');?></option>

                    <?php $class =  $this->db->get('class')->result_array();
                    foreach($class as $key => $class):?>

                    <option value="<?php echo $class['class_id'];?>"
                    <?php if($section['class_id'] == $class['class_id']) echo 'selected';?>>
                    <?php echo $class['name'];?>
                    </option>

                    <?php endforeach;?>
                    </select>
                            </div>
                        </div> -->

								
				<div class="form-group">
                 	<label class="col-md-12" for="example-text"><?php echo get_phrase('teacher');?></label>
                    <div class="col-sm-12">
                                    <select name="teacher_id" class="form-control select2" required>
                                     <option value=""><?php echo get_phrase('select_teacher');?></option>
                    <?php $teacher =  $this->db->get('teacher')->result_array();
                    foreach($teacher as $key => $teacher):?>

                    <option value="<?php echo $teacher['teacher_id'];?>"
                    <?php if($class['teacher_id'] == $teacher['teacher_id']) echo 'selected';?>>
                    <?php echo $teacher['name'];?>
                    </option>

                    <?php endforeach;?>
                    </select>
                            </div>
                        </div>
                        <div class="form-group">
                                  <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm"><i class="fa fa-edit"></i>&nbsp;<?php echo get_phrase('edit_section');?></button>
							</div>
							
                    </form>                
                </div>                
		</div>
	</div>
</div>
<?php endforeach;?>