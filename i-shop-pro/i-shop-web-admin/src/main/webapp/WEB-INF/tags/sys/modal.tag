<%@ tag language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="modalTitle" type="java.lang.String" required="false" description="模态框的标题" %>
<%@ attribute name="modalMessage" type="java.lang.String" required="false" description="提示信息" %>
<!--模态框 提示-->
<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">${modalTitle==null ? "温馨提示":modalTitle}</h4>
            </div>
            <div class="modal-body">
                <p id="modal-message">${modalMessage}&hellip;</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">关闭</button>
                <button id="btnModalOk" type="button" class="btn btn-primary ">确定</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>