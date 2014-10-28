<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<fmt:bundle basename="messages">
<head>
    <title><fmt:message key="label.head.title.dash.board"/></title>
    <link href="<c:url value="/resources/theme/css/datatables/dataTables.bootstrap.css"/>" rel="stylesheet"
          type="text/css"/>
</head>

<body class="skin-blue">

<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Tables
        <small>advanced tables</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
<div class="row">
<div class="col-xs-12">
<div class="box">
<div class="box-header">
    <h3 class="box-title">Hover Data Table</h3>
</div>
<!-- /.box-header -->
<div class="box-body table-responsive">
<table id="example2" class="table table-bordered table-hover">
<thead>
<tr>
    <th>Rendering engine</th>
    <th>Browser</th>
    <th>Platform(s)</th>
    <th>Engine version</th>
    <th>CSS grade</th>
</tr>
</thead>
<tbody>
<tr>
    <td>Trident</td>
    <td>Internet
        Explorer 4.0
    </td>
    <td>Win 95+</td>
    <td> 4</td>
    <td>X</td>
</tr>
<tr>
    <td>Trident</td>
    <td>Internet
        Explorer 5.0
    </td>
    <td>Win 95+</td>
    <td>5</td>
    <td>C</td>
</tr>
<tr>
    <td>Trident</td>
    <td>Internet
        Explorer 5.5
    </td>
    <td>Win 95+</td>
    <td>5.5</td>
    <td>A</td>
</tr>
<tr>
    <td>Trident</td>
    <td>Internet
        Explorer 6
    </td>
    <td>Win 98+</td>
    <td>6</td>
    <td>A</td>
</tr>
<tr>
    <td>Trident</td>
    <td>Internet Explorer 7</td>
    <td>Win XP SP2+</td>
    <td>7</td>
    <td>A</td>
</tr>
<tr>
    <td>Trident</td>
    <td>AOL browser (AOL desktop)</td>
    <td>Win XP</td>
    <td>6</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Firefox 1.0</td>
    <td>Win 98+ / OSX.2+</td>
    <td>1.7</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Firefox 1.5</td>
    <td>Win 98+ / OSX.2+</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Firefox 2.0</td>
    <td>Win 98+ / OSX.2+</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Firefox 3.0</td>
    <td>Win 2k+ / OSX.3+</td>
    <td>1.9</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Camino 1.0</td>
    <td>OSX.2+</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Camino 1.5</td>
    <td>OSX.3+</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Netscape 7.2</td>
    <td>Win 95+ / Mac OS 8.6-9.2</td>
    <td>1.7</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Netscape Browser 8</td>
    <td>Win 98SE+</td>
    <td>1.7</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Netscape Navigator 9</td>
    <td>Win 98+ / OSX.2+</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.0</td>
    <td>Win 95+ / OSX.1+</td>
    <td>1</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.1</td>
    <td>Win 95+ / OSX.1+</td>
    <td>1.1</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.2</td>
    <td>Win 95+ / OSX.1+</td>
    <td>1.2</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.3</td>
    <td>Win 95+ / OSX.1+</td>
    <td>1.3</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.4</td>
    <td>Win 95+ / OSX.1+</td>
    <td>1.4</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.5</td>
    <td>Win 95+ / OSX.1+</td>
    <td>1.5</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.6</td>
    <td>Win 95+ / OSX.1+</td>
    <td>1.6</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.7</td>
    <td>Win 98+ / OSX.1+</td>
    <td>1.7</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Mozilla 1.8</td>
    <td>Win 98+ / OSX.1+</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Seamonkey 1.1</td>
    <td>Win 98+ / OSX.2+</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Gecko</td>
    <td>Epiphany 2.20</td>
    <td>Gnome</td>
    <td>1.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Webkit</td>
    <td>Safari 1.2</td>
    <td>OSX.3</td>
    <td>125.5</td>
    <td>A</td>
</tr>
<tr>
    <td>Webkit</td>
    <td>Safari 1.3</td>
    <td>OSX.3</td>
    <td>312.8</td>
    <td>A</td>
</tr>
<tr>
    <td>Webkit</td>
    <td>Safari 2.0</td>
    <td>OSX.4+</td>
    <td>419.3</td>
    <td>A</td>
</tr>
<tr>
    <td>Webkit</td>
    <td>Safari 3.0</td>
    <td>OSX.4+</td>
    <td>522.1</td>
    <td>A</td>
</tr>
<tr>
    <td>Webkit</td>
    <td>OmniWeb 5.5</td>
    <td>OSX.4+</td>
    <td>420</td>
    <td>A</td>
</tr>
<tr>
    <td>Webkit</td>
    <td>iPod Touch / iPhone</td>
    <td>iPod</td>
    <td>420.1</td>
    <td>A</td>
</tr>
<tr>
    <td>Webkit</td>
    <td>S60</td>
    <td>S60</td>
    <td>413</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera 7.0</td>
    <td>Win 95+ / OSX.1+</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera 7.5</td>
    <td>Win 95+ / OSX.2+</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera 8.0</td>
    <td>Win 95+ / OSX.2+</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera 8.5</td>
    <td>Win 95+ / OSX.2+</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera 9.0</td>
    <td>Win 95+ / OSX.3+</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera 9.2</td>
    <td>Win 88+ / OSX.3+</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera 9.5</td>
    <td>Win 88+ / OSX.3+</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Opera for Wii</td>
    <td>Wii</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Nokia N800</td>
    <td>N800</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Presto</td>
    <td>Nintendo DS browser</td>
    <td>Nintendo DS</td>
    <td>8.5</td>
    <td>C/A<sup>1</sup></td>
</tr>
<tr>
    <td>KHTML</td>
    <td>Konqureror 3.1</td>
    <td>KDE 3.1</td>
    <td>3.1</td>
    <td>C</td>
</tr>
<tr>
    <td>KHTML</td>
    <td>Konqureror 3.3</td>
    <td>KDE 3.3</td>
    <td>3.3</td>
    <td>A</td>
</tr>
<tr>
    <td>KHTML</td>
    <td>Konqureror 3.5</td>
    <td>KDE 3.5</td>
    <td>3.5</td>
    <td>A</td>
</tr>
<tr>
    <td>Tasman</td>
    <td>Internet Explorer 4.5</td>
    <td>Mac OS 8-9</td>
    <td>-</td>
    <td>X</td>
</tr>
<tr>
    <td>Tasman</td>
    <td>Internet Explorer 5.1</td>
    <td>Mac OS 7.6-9</td>
    <td>1</td>
    <td>C</td>
</tr>
<tr>
    <td>Tasman</td>
    <td>Internet Explorer 5.2</td>
    <td>Mac OS 8-X</td>
    <td>1</td>
    <td>C</td>
</tr>
<tr>
    <td>Misc</td>
    <td>NetFront 3.1</td>
    <td>Embedded devices</td>
    <td>-</td>
    <td>C</td>
</tr>
<tr>
    <td>Misc</td>
    <td>NetFront 3.4</td>
    <td>Embedded devices</td>
    <td>-</td>
    <td>A</td>
</tr>
<tr>
    <td>Misc</td>
    <td>Dillo 0.8</td>
    <td>Embedded devices</td>
    <td>-</td>
    <td>X</td>
</tr>
<tr>
    <td>Misc</td>
    <td>Links</td>
    <td>Text only</td>
    <td>-</td>
    <td>X</td>
</tr>
<tr>
    <td>Misc</td>
    <td>Lynx</td>
    <td>Text only</td>
    <td>-</td>
    <td>X</td>
</tr>
<tr>
    <td>Misc</td>
    <td>IE Mobile</td>
    <td>Windows Mobile 6</td>
    <td>-</td>
    <td>C</td>
</tr>
<tr>
    <td>Misc</td>
    <td>PSP browser</td>
    <td>PSP</td>
    <td>-</td>
    <td>C</td>
</tr>
<tr>
    <td>Other browsers</td>
    <td>All others</td>
    <td>-</td>
    <td>-</td>
    <td>U</td>
</tr>
</tbody>
<tfoot>
<tr>
    <th>Rendering engine</th>
    <th>Browser</th>
    <th>Platform(s)</th>
    <th>Engine version</th>
    <th>CSS grade</th>
</tr>
</tfoot>
</table>
</div>
<!-- /.box-body -->
</div>
<!-- /.box -->

</div>
</div>

</section>
<!-- /.content -->
</aside>
<!-- /.right-side -->


<!-- COMPOSE MESSAGE MODAL -->
<div class="modal fade" id="compose-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"><i class="fa fa-envelope-o"></i> Compose New Message</h4>
            </div>
            <form action="#" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">TO:</span>
                            <input name="email_to" type="email" class="form-control" placeholder="Email TO">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">CC:</span>
                            <input name="email_to" type="email" class="form-control" placeholder="Email CC">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">BCC:</span>
                            <input name="email_to" type="email" class="form-control" placeholder="Email BCC">
                        </div>
                    </div>
                    <div class="form-group">
                        <textarea name="message" id="email_message" class="form-control" placeholder="Message"
                                  style="height: 120px;"></textarea>
                    </div>
                    <div class="form-group">
                        <div class="btn btn-success btn-file">
                            <i class="fa fa-paperclip"></i> Attachment
                            <input type="file" name="attachment"/>
                        </div>
                        <p class="help-block">Max. 32MB</p>
                    </div>

                </div>
                <div class="modal-footer clearfix">

                    <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i>
                        Discard
                    </button>

                    <button type="submit" class="btn btn-primary pull-left"><i class="fa fa-envelope"></i> Send Message
                    </button>
                </div>
            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

</body>
</fmt:bundle>
</html>