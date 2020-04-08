defmodule CookpodWeb.PageControllerTest do
  use CookpodWeb.ConnCase
  require CookpodWeb.Gettext

  test "GET /", %{conn: conn} do
    Gettext.put_locale(CookpodWeb.Gettext, "ru_RU")
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ CookpodWeb.Gettext.gettext("Welcome to Phoenix!")
  end
end
