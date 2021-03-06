<div id="product_share_system_widget_content" class="s_widget_options_holder tb_cp">

  <style id="product_share_system_widget_content_styles">
    #product_share_system_widget_content .ui-tabs-panel [data-language_code]:not([data-language_code="<?php echo $tbData->first_language_code; ?>"]) {
      display: none;
    }
  </style>

  <h1 class="sm_title"><span>Product Share</span></h1>

  <form action="<?php echo $tbUrl->generateJs('Widget/convertFormDataToSettings'); ?>&class_name=<?php echo $widget->getClassName(); ?>" method="post">

    <div class="tb_tabs tb_subpanel_tabs tbWidgetMainTabs">

      <div class="tb_tabs_nav">
        <ul class="clearfix">
          <li><a href="#widget_settings_holder">Edit</a></li>
          <li><a href="#widget_box_styles_holder">Box Styles</a></li>
          <li><a href="#widget_title_styles_holder">Title Styles</a></li>
          <li><a href="#widget_advanced_settings_holder">Advanced</a></li>
        </ul>
      </div>

      <div id="widget_settings_holder" class="tb_subpanel">
        <div<?php if (count($languages) > 1) echo ' class="tb_tabs tb_fly_tabs tbLanguageTabs"'; ?>>

          <h2>Edit Product Description</h2>

          <?php if (count($languages) > 1): ?>
          <ul class="tb_tabs_nav clearfix">
            <?php foreach ($languages as $language): ?>
            <li class="s_language">
              <a href="#widget_product_share_system_language_<?php echo $language['code']; ?>" title="<?php echo $language['name']; ?>">
                <img class="inline" src="<?php echo $language['url'] . $language['image']; ?>" /> <?php echo $language['code']; ?>
              </a>
            </li>
            <?php endforeach; ?>
          </ul>
          <?php endif; ?>

          <?php foreach ($languages as $language): ?>
          <div id="widget_product_share_system_language_<?php echo $language['code']; ?>" class="s_language_<?php echo $language['code']; ?>" data-language_code="<?php echo $language['code']; ?>"></div>
          <?php endforeach; ?>

          <fieldset>
            <legend>Block title</legend>

            <div class="tb_wrap">
              <div class="s_row_2 tb_col tb_1_6">
                <label>Show</label>
                <input type="hidden" name="widget_data[block_title]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[block_title]" value="1"<?php if($settings['block_title'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>

              <div class="s_row_2 tb_col tb_1_6 tbInlineBlockTitle">
                <label>Inline title</label>
                <input type="hidden" name="widget_data[inline]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[inline]" value="1"<?php if($settings['inline'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>

              <div class="s_row_2 tb_col tb_1_5 tbBlockTitleAlign">
                <label>Text align</label>
                <?php foreach ($languages as $language): ?>
                <div class="s_full" data-language_code="<?php echo $language['code']; ?>">
                  <span class="s_language_icon"><img src="<?php echo $language['url'] . $language['image']; ?>" /></span>
                  <div class="s_select">
                    <select name="widget_data[lang][<?php echo $language['code']; ?>][block_title_align]">
                      <option value="default"<?php if($settings['lang'][$language['code']]['block_title_align'] == 'default') echo ' selected="selected"';?>>Default</option>
                      <option value="left"<?php    if($settings['lang'][$language['code']]['block_title_align'] == 'left')    echo ' selected="selected"';?>>Left</option>
                      <option value="center"<?php  if($settings['lang'][$language['code']]['block_title_align'] == 'center')  echo ' selected="selected"';?>>Center</option>
                      <option value="right"<?php   if($settings['lang'][$language['code']]['block_title_align'] == 'right')   echo ' selected="selected"';?>>Right</option>
                    </select>
                  </div>
                </div>
                <?php endforeach; ?>
              </div>
            </div>
          </fieldset>

          <fieldset>
            <legend>Share Buttons</legend>

            <div class="tb_wrap">
              <div class="s_row_2 tb_col tb_1_6 tb_live_row_1 tb_live_1_1">
                <label>Facebook like</label>
                <input type="hidden" name="widget_data[button_facebook]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[button_facebook]" value="1"<?php if($settings['button_facebook'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>
              <div class="s_row_2 tb_col tb_1_6 tb_live_row_1 tb_live_1_1">
                <label>Twitter</label>
                <input type="hidden" name="widget_data[button_twitter]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[button_twitter]" value="1"<?php if($settings['button_twitter'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>
              <div class="s_row_2 tb_col tb_1_6 tb_live_row_1 tb_live_1_1">
                <label>Google +1</label>
                <input type="hidden" name="widget_data[button_google]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[button_google]" value="1"<?php if($settings['button_google'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>
              <div class="s_row_2 tb_col tb_1_6 tb_live_row_1 tb_live_1_1">
                <label>Pinterest</label>
                <input type="hidden" name="widget_data[button_pinterest]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[button_pinterest]" value="1"<?php if($settings['button_pinterest'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>
              <div class="s_row_2 tb_col tb_1_6 tb_live_row_1 tb_live_1_1">
                <label>Stumbleupon</label>
                <input type="hidden" name="widget_data[button_stumbleupon]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[button_stumbleupon]" value="1"<?php if($settings['button_stumbleupon'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>
              <div class="s_row_2 tb_col tb_1_6 tb_live_row_1 tb_live_1_1">
                <label>LinkedIn</label>
                <input type="hidden" name="widget_data[button_linkedin]" value="0" />
                <label class="tb_toggle"><input type="checkbox" name="widget_data[button_linkedin]" value="1"<?php if($settings['button_linkedin'] == '1') echo ' checked="checked"';?> /><span></span><span></span></label>
              </div>
            </div>

            <div class="tb_wrap">
              <div class="s_row_2 tb_col tb_1_1">
                <label>Custom share buttons</label>
                <div class="s_full">
                  <textarea name="widget_data[button_custom]" rows="3"><?php echo $settings['button_custom']; ?></textarea>
                </div>
              </div>
            </div>

          </fieldset>

        </div>
      </div>

      <div id="widget_box_styles_holder" class="tb_subpanel tb_has_sidebar tb_cp clearfix tbWidgetCommonOptions">
        <?php $available_options = array('layout', 'box_shadow', 'background', 'border'); ?>
        <input type="hidden" name="widget_data[widget_name]" value="<?php echo $settings['widget_name']; ?>" />
        <input type="hidden" name="widget_data[slot_name]" value="<?php echo $settings['slot_name']; ?>" />
        <input type="hidden" name="widget_data[slot_prefix]" value="<?php echo $settings['slot_prefix']; ?>" />
        <?php $layout_display = true; ?>
        <?php require tb_modification(dirname(__FILE__) . '/_common_options.tpl'); ?>
      </div>

      <div id="widget_title_styles_holder" class="tb_subpanel tb_has_sidebar tb_cp clearfix tbWidgetCommonOptions">
        <?php unset($available_options); ?>
        <?php $style_section_id = 'title'; ?>
        <?php require tb_modification(dirname(__FILE__) . '/_common_options.tpl'); ?>
      </div>

      <div id="widget_advanced_settings_holder" class="tb_subpanel">
        <?php require tb_modification(dirname(__FILE__) . '/_advanced.tpl'); ?>
      </div>

    </div>

    <div class="s_submit clearfix">
      <a class="s_button s_red s_h_40 tbWidgetUpdate" href="javascript:;">Update Settings</a>
    </div>

  </form>

</div>

<script type="text/javascript">
  $(document).ready(function () {

    $("#widget_settings_holder").find(".tbLanguageTabs").first().tabs({
      activate: function (event, ui) {
        $("#product_share_system_widget_content_styles").html('#product_share_system_widget_content .ui-tabs-panel [data-language_code]:not([data-language_code="' + ui.newPanel.data("language_code") + '"]) { display: none; }');
      }
    });

  });
</script>