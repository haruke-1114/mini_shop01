<?php
/* Smarty version 3.1.29, created on 2020-11-10 06:02:15
  from "D:\VScode\mini_shop\templates\goods_display.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5faa2ce7833238_73949297',
  'file_dependency' => 
  array (
    'f68f2ceaf8df3ec9ea057f3b68971e3b40303740' => 
    array (
      0 => 'D:\\VScode\\mini_shop\\templates\\goods_display.html',
      1 => 1604988133,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5faa2ce7833238_73949297 ($_smarty_tpl) {
?>
<div class="row">
  <div class="col-md-6">
    <img src="<?php echo $_smarty_tpl->tpl_vars['goods']->value['pic'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
" class="img-thumbnail">
  </div>
  <div class="col-md-6">
    <h2><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
</h2>
    <p>售價：<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_price'];?>
元整</p>
    <p>人氣：<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_counter'];?>
</p>
    <div>
      <a href="index.php?op=add_to_cart&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
&goods_title=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
&goods_amount=1"
        class="btn btn-primary" role="button">加入購物車</a>
      <?php if ($_smarty_tpl->tpl_vars['isAdmin']->value) {?>
      <a href="tool.php?op=goods_form&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
" class="btn btn-warning">編輯商品</a>
      <a href="tool.php?op=delete_goods&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
" class="btn btn-danger">刪除商品</a>
      <?php }?>
    </div>
  </div>
</div>


<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#goods" aria-controls="goods" role="tab" data-toggle="tab">商品介紹</a>
  </li>
  <li role="presentation"><a href="#service" aria-controls="service" role="tab" data-toggle="tab">付款方式</a></li>
  <li role="presentation"><a href="#note" aria-controls="note" role="tab" data-toggle="tab">退換或須知</a></li>
  <li role="presentation"><a href="#other" aria-controls="other" role="tab" data-toggle="tab">運送方式</a></li>
</ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="goods">
    <h3 style='background-color: cadetblue; color: antiquewhite; width: 100px;'>商品介紹</h3>
    <p><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_content'];?>
</p>
  </div>
  <div role="tabpanel" class="tab-pane" id="other">
    <h3 style='background-color: cadetblue; color: antiquewhite; width: 100px;'>運送方式</h3>
    <p>宅配（新竹貨運）、超商取貨（7-11、全家）、離島宅配（新竹貨運）。</p>
    <ol>
      <li><b>宅配配送：</b>商品直接配送至您所填寫的寄件地址，不含郵政信箱。</li>
      <li><b>付款後超商取貨：</b>待超商統倉把訂購商品配送至指定超商門市後，<br>
        您將收到系統所發送之簡訊通知，屆時再麻煩前往指定門市取貨即可。</li>
      <li><b>超商取貨付款：</b>同上所述，只是差異於貨到時需同時繳付款項並取貨。</li>
    </ol>
  </div>
  <div role="tabpanel" class="tab-pane" id="note">
    <h3 style='background-color: cadetblue; color: antiquewhite; width: 125px; '>退換貨須知</h3>
    <ol>
      <li>請進入「會員專區」→ 點選「查看訂單或訂單查詢」，按下「申請退貨」並選取欲辦理退貨之品項。</li>
      <li>申請退貨後，客服人員將會於三個工作天內安排並委託宅配業者前往取回商品，敬請保持電話暢通。</li>
      <li>退貨商品請使用適當大小紙箱作外包裝，切勿直接於商品外袋上黏貼紙張或書寫文字。</li>
      <li>宅配取件完畢將提供簽收單據供您留存。（宅配公司僅收件。請記得向貨運人員索取單據，並請保留至退貨退款完成以利日後查詢。）</li>
      <li>收到您的退貨商品後將會儘速確認商品狀況，如商品無誤，系統將同步更新訂單狀態為退貨完成。平台端將會於七個工作天內退款，退款方式部份如下：<br>
        (1) 信用卡付款→系統自動刷退。<br>
        (2) ATM轉帳、超商取貨付款→金額會退回至您退貨時所填寫的匯款帳戶。</li>
      <b><span style='color:red'>※ 請注意！</span>>退回之商品必須為到貨時全新狀態且包裝完整（保持商品、贈品、包裝之完整性），否則恕不接受退訂。 </b>
    </ol>
  </div>
  <div role="tabpanel" class="tab-pane" id="service">
    <h3 style='background-color: cadetblue; color: antiquewhite; width: 100px;'>付款方式</h3>
    <ul style="list-style-type:square">
      <li><b>信用卡即時線上一次刷卡付款</b></li>
      方便又好用的付款方式，當您選擇線上刷卡方式進行交易時，作業流程透過SSL加密機制，保障您的個人隱私資料。<br><br>
      <li><b>超商付款取貨</b></li>
      適合不方便在家收貨或者不方便使用ATM與無信用卡的消費者。<br><br>
      <li><b>ATM付款</b></li>
      適用沒有信用卡或者不方便前往超商取貨付款的消費者。<br>
      使用ATM付款方式只需將訂單款項透過實體/網路ATM或者網路銀行直接匯入系統指定帳號即可完成付款。<br><br>
      <li><b>LINE Pay</b></li>
      付款不需輸入信用卡資訊及3D驗證，僅需輸入專屬密碼即可使用信用卡進行付款，節省您的付款時間。<br><br>
    </ul>
  </div>
</div>
<style>
  b{
    font-size: 15px;
  }
</style><?php }
}
