/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.33
 * Generated at: 2020-04-24 03:47:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ddl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>구슬기</title>\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <!-- 부트 스트랩 css 추가하기-->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/bootstrap.min.css\">\r\n");
      out.write("    <!-- 커스텀 CSS 추가하기 -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/custom.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"home\"/><!-- navbar 에서 #career 와 section 의 아이디값이 일치해서 이동함-->\r\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "top.jsp", out, false);
      out.write("\r\n");
      out.write("    <section class=\"container mt-5\">\r\n");
      out.write("        <div class=\"text-center\">                   <!-- mb-3 아래쪽  mt-3 위쪽 여백-->\r\n");
      out.write("            <img src=\"./img/슬기.png\" class=\"img-fluid mb-3  rounded-pill\" style=\"margin-top: 70px;\">\r\n");
      out.write("            <h3 style=\"font-family:Carrois Gothic SC; margin: 20px\">구슬기\r\n");
      out.write("                <!-- <h5>유난히 내성적이었던..</h5> -->\r\n");
      out.write("            </h3>\r\n");
      out.write("            <img src=\"./img/heartt.svg\" class=\"img-fluid mr-1\" style=\"width: 25px; height: 25px;\"> 유난히 내성적이었던...\r\n");
      out.write("            <br>\r\n");
      out.write("            <img src=\"./img/heartt.svg\" class=\"img-fluid mr-1\" id=\"career\"  style=\"width: 25px; height: 25px;\"> 오설록 제주 동백꽃 티 \r\n");
      out.write("            <!-- <br>\r\n");
      out.write("            <img src=\"./img/arrow.svg\" class=\"img-fluid mr-1\" id=\"career\" style=\"width: 50px; height: 50px;\" >  -->\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </section>\r\n");
      out.write("    <section  class=\"bg-white text-dark mt-5 mb-3 pt-5 pb-4\">\r\n");
      out.write("        <div class=\"text-center\">\r\n");
      out.write("            <div class=\"container text-left mb-5\" style=\"max-width: 600px;\">\r\n");
      out.write("                <h4 style=\"font-family:Carrois Gothic SC\">  연주 경력 </h4>\r\n");
      out.write("                <ul>\r\n");
      out.write("                    <li>WOODWIND QUINTET THE \"K\" 예술의 전당 리사이틀 홀 </li>\r\n");
      out.write("                    <li>R.Schumann concert piece for Four Horns 압구정 장천아트홀</li>\r\n");
      out.write("                    <li>CUVRES Ensemble 호른 협연 가천대학교 예음관 예음홀</li>\r\n");
      out.write("                    <li>Mu : 人 Clarinet Ensemble 성남아트센터 앙상블시어터</li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"text-center\">\r\n");
      out.write("            <div class=\"container text-left mb-5\" style=\"max-width: 600px;\">\r\n");
      out.write("                <h4 style=\"font-family:Carrois Gothic SC\">  개발자로서의 능력 </h4>\r\n");
      out.write("                <div class=\"container my-4\">\r\n");
      out.write("                    <div class=\"progress\">\r\n");
      out.write("                        <div class=\"progress-bar progress-bar-striped progress-bar-animated\" role=\"progressbar\" style=\"width: 50%\"\r\n");
      out.write("                        aria-valuenow=\"50\" aria-valuemin=\"0\" aria-valuemax=\"100\">55%</div>\r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"container my-4\">조금씩 늘어가고 있습니다...</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <section id=\"portfolio\" class=\"mb-3 pt-4 pb-5\">\r\n");
      out.write("        <div class=\"text-center\">\r\n");
      out.write("            <h4 style=\"margin-bottom: 70px;\">Horn</h4>\r\n");
      out.write("        </div>\r\n");
      out.write("            <div class=\"container mt-3\" style=\"max-width: 1000px;\">\r\n");
      out.write("                <div class=\"card-deck\" >\r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("                        <img class=\"card-img-top\" src=\"./img/성남.jpg\">\r\n");
      out.write("                        <div class=\"card-body\" >\r\n");
      out.write("                            <h4 class=\"card-title\" >Mu : 人 Clarinet Ensemble</h4>\r\n");
      out.write("                            <!-- <p class=\"card-text\" style=\"text-align: justify\">\r\n");
      out.write("                              클라 앙상블\r\n");
      out.write("                            </p> -->\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"card\">\r\n");
      out.write("                        <img class=\"card-img-top\" src=\"./img/예당.jpg\">\r\n");
      out.write("                        <div class=\"card-body\">\r\n");
      out.write("                            <h4 class=\"card-title\">WOODWIND QUINTET THE \"K\"</h4>\r\n");
      out.write("                            <!-- <p class=\"card-text\" style=\"text-align: justify\">\r\n");
      out.write("                                클라리넷 앙상블 팀과 협연했던 사진입니다.\r\n");
      out.write("                            </p> -->\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div><!-- 여기까지 한 세트-->\r\n");
      out.write("            <hr >\r\n");
      out.write("            <div class=\"card-deck mx-5\"  >\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <div id=\"carousel\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("                        <ol class=\"carousel-indicators\">\r\n");
      out.write("                            <li data-target=\"#carousel\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("                            <li data-target=\"#carousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("                            <li data-target=\"#carousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("                            <li data-target=\"#carousel\" data-slide-to=\"3\"></li>\r\n");
      out.write("                        </ol>\r\n");
      out.write("                        <div class=\"carousel-inner\">\r\n");
      out.write("                            <div class=\"carousel-item active\">\r\n");
      out.write("                                <img class=\"d-block w-100 h-100\" src=\"./img/예당2.jpg\" alt=\"첫 번째 이미지\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"carousel-item\">\r\n");
      out.write("                                <img class=\"d-block w-100 h-100\" src=\"./img/협연.jpg\" alt=\"두 번째 이미지\" >\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"carousel-item \">\r\n");
      out.write("                                <img class=\"d-block w-100 h-100\" src=\"./img/슈만.jpg\" alt=\"세 번째 이미지\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"carousel-item\">\r\n");
      out.write("                                <img class=\"d-block w-100 h-100\" src=\"./img/슈만4.jpg\" alt=\"네 번째 이미지\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- 단추 -->\r\n");
      out.write("                        <a class=\"carousel-control-prev\" href=\"#carousel\" role=\"button\" data-slide=\"prev\">\r\n");
      out.write("                            <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                            <span class=\"sr-only\">Previous</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <a class=\"carousel-control-next\" href=\"#carousel\" role=\"button\" data-slide=\"next\">\r\n");
      out.write("                            <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                            <span class=\"sr-only\">Previous</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div><!-- 여기까지 한 세트-->\r\n");
      out.write("            <hr>\r\n");
      out.write("            <div class=\"card-deck mx-5\"  >\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                    <div id=\"carousel2\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("                        <ol class=\"carousel-indicators\">\r\n");
      out.write("                            <li data-target=\"#carousel2\" data-slide-to=\"0\" ></li>\r\n");
      out.write("                            <li data-target=\"#carousel2\" data-slide-to=\"1\" class=\"active\"></li>\r\n");
      out.write("                            <li data-target=\"#carousel2\" data-slide-to=\"2\"></li>\r\n");
      out.write("                        </ol>\r\n");
      out.write("                        <div class=\"carousel-inner\">\r\n");
      out.write("                            <div class=\"carousel-item active\">\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/졸연흑백1.jpg\" alt=\"첫 번째 이미지\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"carousel-item\">\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/졸연흑백2.jpg\" alt=\"두 번째 이미지\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"carousel-item \">\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/졸연1.jpg\" alt=\"세 번째 이미지\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- 단추 -->\r\n");
      out.write("                        <a class=\"carousel-control-prev\" href=\"#carousel2\" role=\"button\" data-slide=\"prev\">\r\n");
      out.write("                            <span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                            <span class=\"sr-only\">Previous</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                        <a class=\"carousel-control-next\" href=\"#carousel2\" role=\"button\" data-slide=\"next\" >\r\n");
      out.write("                            <span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\r\n");
      out.write("                            <span class=\"sr-only\">Previous</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div><!-- 여기까지 한 세트-->\r\n");
      out.write("        </div>\r\n");
      out.write("    </section><!--사진들 끝-->\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <section class=\"bg-white text-dark  mx-5\">\r\n");
      out.write("    </section>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <section  class=\"bg-white text-dark mt-5 pt-5 pb-4\" id=\"like\">\r\n");
      out.write("        <h4  style= \"text-align: center; margin-bottom: 50px; margin-top: 50px;\"> Favorite </h4>\r\n");
      out.write("        <div class=\"text-center\">\r\n");
      out.write("            <div class=\"container text-left mb-5\" style=\"max-width: 600px;\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                    <div class=\"col-5\">\r\n");
      out.write("                        <div class=\"list-group\">\r\n");
      out.write("                            <a class=\"list-group-item list-group-item-action active\" data-toggle=\"list\" href=\"#list-java\">좋아하는 활동</a>\r\n");
      out.write("                            <a class=\"list-group-item list-group-item-action \" data-toggle=\"list\" href=\"#list-cpp\">좋아하는 음악</a>\r\n");
      out.write("                            <a class=\"list-group-item list-group-item-action \" data-toggle=\"list\" href=\"#list-python\">좋아하는 미드</a>\r\n");
      out.write("                            <a class=\"list-group-item list-group-item-action \" data-toggle=\"list\" href=\"#list-html\">스트레스 해소</a>\r\n");
      out.write("                            <a class=\"list-group-item list-group-item-action \" data-toggle=\"list\" href=\"#list-seulki\">내가 그린 그림</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-7\">\r\n");
      out.write("                        <div class=\"tab-content\">\r\n");
      out.write("                            <div class=\"tab-pane fade show active\" id=\"list-java\">\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/나4.jpg\" alt=\"첫 번째 이미지\">\r\n");
      out.write("                                \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-pane fade\" id=\"list-cpp\">\r\n");
      out.write("                                <!-- show 를 빼서 처음부터 보이지 않게 해준다.-->\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/마리.jpg\" alt=\"첫 번째 이미지\">\r\n");
      out.write("                                \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-pane fade\" id=\"list-python\">\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/굿플.jpg\" alt=\"첫 번째 이미지\">\r\n");
      out.write("                                \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-pane fade\" id=\"list-html\">\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/000.jpg\" alt=\"첫 번째 이미지\">\r\n");
      out.write("                                \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"tab-pane fade\" id=\"list-seulki\" >\r\n");
      out.write("                                <img class=\"d-block w-100\" src=\"./img/그림5.jpg\" alt=\"첫 번째 이미지\">\r\n");
      out.write("                                \r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div ></div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>    \r\n");
      out.write("    </section>\r\n");
      out.write(" \r\n");
      out.write("    <!--연락처 -->\r\n");
      out.write("    <section  class=\"bg-white\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-6 mb-4\">\r\n");
      out.write("                    <!--반반씩 하나의 행 차지하도록해줌-->\r\n");
      out.write("                    <h4 class=\"mt-5 \" style=\"font-family:Carrois Gothic SC ; text-align: center;\">Info</h4>\r\n");
      out.write("                    <div class=\"d-flex flex-row\">\r\n");
      out.write("                        <div class=\"p-3 align-self-start\"></div>\r\n");
      out.write("                        <img src=\"./img/happy.svg\" style=\"width: 50px; height: 50px;\">\r\n");
      out.write("                        <div class=\"p-3 align-self-end\" style=\"text-align: justify;\">\r\n");
      out.write("                            낯을 좀 가리지만 잘 웃는다\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"d-flex flex-row\">\r\n");
      out.write("                        <div class=\"p-3 align-self-start\"></div>\r\n");
      out.write("                        <img src=\"./img/st.svg\" style=\"width: 50px; height: 50px;\">\r\n");
      out.write("                        <div class=\"p-3 align-self-end\" style=\"text-align: justify;\">\r\n");
      out.write("                            스트레스 받으면 피아노 치거나, 음악듣는다\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"d-flex flex-row\">\r\n");
      out.write("                        <div class=\"p-3 align-self-start\"></div>\r\n");
      out.write("                        <img src=\"./img/zz.svg\" style=\"width: 50px; height: 50px;\">\r\n");
      out.write("                        <div class=\"p-3 align-self-end\" style=\"text-align: justify;\">\r\n");
      out.write("                            잠자는것도 좋아\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"d-flex flex-row\">\r\n");
      out.write("                        <div class=\"p-3 align-self-start\"></div>\r\n");
      out.write("                        <img src=\"./img/in-love.svg\" style=\"width: 50px; height: 50px;\">\r\n");
      out.write("                        <div class=\"p-3 align-self-end\" style=\"text-align: justify;\">\r\n");
      out.write("                            새우 좋아한다\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-lg-6\">\r\n");
      out.write("                    <div class=\"card text-center card-form mt-5 mb-4\">\r\n");
      out.write("                        <div class=\"card-body center\">\r\n");
      out.write("                            <h4>Click</h4>\r\n");
      out.write("                            <form>\r\n");
      out.write("                                <div class=\"footer-col col-md-4 mb-2 \"  style=\" margin:auto  ;\">\r\n");
      out.write("                                    <!-- <h3 style=\"color: black;\">Click</h3> -->\r\n");
      out.write("                                    <a href=\"https://youtu.be/97_VJve7UVc\" class=\"btn btn-warning m-2 \">피아노곡</a>  \r\n");
      out.write("                                    <a href=\"https://youtu.be/wbT9DeULzU4\" class=\"btn btn-primary m-2 \">피아노곡</a>\r\n");
      out.write("                                    <a href=\"https://youtu.be/kxqn8FAVbpU?list=RDkxqn8FAVbpU\" class=\"btn btn-danger m-2\">팝송</a>\r\n");
      out.write("                                    <a href=\"https://youtu.be/oiSnB1D4gq8\" class=\"btn btn-success m-2\">내 연주</a>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("    <section  class=\"bg-white; align-self-sm-auto\">\r\n");
      out.write("        <div class=\"container\" style=\"margin-bottom: 25px; margin-top: 40px;\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <div class=\"col-lg-2 \"></div>\r\n");
      out.write("                <div class=\"col-lg-4 \">\r\n");
      out.write("            <iframe width=\"700\" height=\"394\" src=\"https://www.youtube.com/embed/pT9mCa_5C4A?autoplay=1\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col-lg-6 \"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>    \r\n");
      out.write("    </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- Optional JavaScript -->\r\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.slim.min.js\"\r\n");
      out.write("        integrity=\"sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\"\r\n");
      out.write("        integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"\r\n");
      out.write("        integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\"\r\n");
      out.write("        crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
