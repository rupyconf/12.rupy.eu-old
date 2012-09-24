var ModalController =
{
    init: function()
    {
        this.handleModalOpen();
        this.handleModalClose();
    },
    
    handleModalOpen: function() {
        $('.modals a').click(function() {
            var id = $(this).attr('rel');
            var modalHeight = $('#' + id).outerHeight();
            var modalWidth = $('#' + id).outerWidth();
            $('#' + id).
                css({'margin-left': '-' + modalWidth/2 + 'px'}).
                css({'margin-top': '-' + modalHeight/2 + 'px'}).
                show();
            
            return false;
        });
    },
    
    handleModalClose: function() {
        $('.modal a.close').click(function() {
            $(this).parents('.modal').hide();
            
            return false;
        });
    }
}

$(document).ready(function() {
    ModalController.init();
});