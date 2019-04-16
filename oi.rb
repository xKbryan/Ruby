id, method, action, length, size = %w(search get 140 28)
html = %{<div id="hsearch"> 
  <form id="#{id}" action="#{action}" method="#{method}" 
    autocomplete="off">      
    <div>          
      <input autocomplete="off" name="q" class="textbox" 
      placeholder="search" tabindex="1" type="text" 
      maxlength="#{length}" size="#{size}" value="">      
    </div>      
  </form>  
</div>}