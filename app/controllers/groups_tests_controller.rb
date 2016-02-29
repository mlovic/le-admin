class GroupsTestsController < ApplicationController
  before_action :set_groups_test, only: [:show, :edit, :update, :destroy]

  # GET /groups_tests
  # GET /groups_tests.json
  def index
    @groups_tests = GroupsTest.all
  end

  # GET /groups_tests/1
  # GET /groups_tests/1.json
  def show
  end

  # GET /groups_tests/new
  def new
    @groups_test = GroupsTest.new
  end

  # GET /groups_tests/1/edit
  def edit
  end

  # POST /groups_tests
  # POST /groups_tests.json
  def create
    @groups_test = GroupsTest.new(groups_test_params)

    group_id = groups_test_params[:group_id].to_i
    @group = Group.find(group_id)

    respond_to do |format|
      if @groups_test.save
        format.html { redirect_to @group, notice: 'Groups test was successfully created.' }
        #format.json { render :show, status: :created, location: @groups_test }
      else
        #format.html { render :new }
        #format.json { render json: @groups_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups_tests/1
  # PATCH/PUT /groups_tests/1.json
  def update
    respond_to do |format|
      if @groups_test.update(groups_test_params)
        format.html { redirect_to @groups_test, notice: 'Groups test was successfully updated.' }
        format.json { render :show, status: :ok, location: @groups_test }
      else
        format.html { render :edit }
        format.json { render json: @groups_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups_tests/1
  # DELETE /groups_tests/1.json
  def destroy
    @groups_test.destroy
    respond_to do |format|
      format.html { redirect_to groups_tests_url, notice: 'Groups test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groups_test
      @groups_test = GroupsTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groups_test_params
      params.require(:groups_test).permit(:test_id, :group_id)
    end
end
