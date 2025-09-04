# frozen_string_literal: true

ComfyBlog::Application.routes.draw do
  comfy_route :cms_admin, path: "admin"
  comfy_route :blog_admin, path: "admin"
  comfy_route :blog, path: "blog"
  comfy_route :cms, path: ""
end
