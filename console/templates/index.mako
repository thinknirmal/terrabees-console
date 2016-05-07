<!-- NOT IN USE -->
<%inherit file="base.mako"/>

<%block name="js">
    <script type="text/javascript">
        $(document).ready(function(){
            window.location('/dashboard');
            // shared_utitilies.load_page('/dashboard');
        });
    </script>
</%block>