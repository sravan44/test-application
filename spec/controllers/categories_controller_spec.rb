require 'spec_helper'
describe CategoriesController do

  def valid_attributes
    {:name => "hello"}
  end

  describe "GET index" do
    it "assigns all categories as @categories" do
      category = Category.create! valid_attributes
      get :index
      assigns(:categories).should eq([category])
    end
  end

  describe "GET show" do
    it "assigns the requested category as @category" do
      category = Category.create! valid_attributes
      get :show, :id => category.id
      assigns(:category).should eq(category)
    end
  end

  describe "GET new" do
    it "assigns a new category as @category" do
      get :new
      assigns(:category).should be_a_new(Category)
    end
  end

  describe "GET edit" do
    it "assigns the requested category as @category" do
      category = Category.create! valid_attributes
      get :edit, :id => category.id
      assigns(:category).should eq(category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Category" do
        expect {
          post :create, :category => valid_attributes
        }.to change(Category, :count).by(1)
      end

      it "assigns a newly created category as @category" do
        post :create, :category => valid_attributes
        assigns(:category).should be_a(Category)
        assigns(:category).should be_persisted
      end

      it "redirects to the created category" do
        post :create, :category => valid_attributes
        response.should redirect_to(Category.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved category as @category" do
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        post :create, :category => {}
        assigns(:category).should be_a_new(Category)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        post :create, :category => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested category" do
        category = Category.create! valid_attributes
        Category.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => category.id, :category => {'these' => 'params'}
      end

      it "assigns the requested category as @category" do
        category = Category.create! valid_attributes
        put :update, :id => category.id, :category => valid_attributes
        assigns(:category).should eq(category)
      end

      it "redirects to the category" do
        category = Category.create! valid_attributes
        put :update, :id => category.id, :category => valid_attributes
        response.should redirect_to(category)
      end
    end

    describe "with invalid params" do
      it "assigns the category as @category" do
        category = Category.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        put :update, :id => category.id, :category => {}
        assigns(:category).should eq(category)
      end

      it "re-renders the 'edit' template" do
        category = Category.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        put :update, :id => category.id, :category => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested category" do
      category = Category.create! valid_attributes
      expect {
        delete :destroy, :id => category.id
      }.to change(Category, :count).by(-1)
    end

    it "redirects to the categories list" do
      category = Category.create! valid_attributes
      delete :destroy, :id => category.id
      response.should redirect_to(categories_url)
    end
  end

end
