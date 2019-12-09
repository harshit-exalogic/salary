class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy,:salary_form,:update_salary,:show_salary,:salary_slip]
  # before_action :is_admin?, except: [:show]
  # before_action :is_user?, only: [:show]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user=User.find_by_id(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


    def salary_form

    end

    def show_salary
      
    end
    def update_salary
      @user.update!(user_params)
      redirect_to show_salary_user_path (@user)

    end
    def salary_slip
       #@user=User.find_by_id(params[:id])
    #  pdf = WickedPdf.new.pdf_from_string( #1
    # render_to_string('salary_slip', layout: false)) #2
    # send_data(pdf, #3
    # filename: 'salary_slip.pdf', #4
    # type: 'application/pdf', #5
    # disposition: 'attachment') #6
     respond_to do |format|
   format.html
   format.pdf do
     render pdf: "Your_filename",
     template: "users/salary_slip.html.erb"
     # layout: 'pdf.html'
   end
  end
end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name,:basic_pay,:reimbursement, 
        :number_of_leaves_taken_by_employee,
       :enter_the_tax_rate, :other_deductions, :house_rent_allowance,:city_compensatory_allowance, :special_allowance,:transport_allowance ,
        :income_tax,:professional_tax , :loss_of_pay, :gross_pay , :net_pay, 
        :last_name, :date_of_birth, :date_of_joining,
         :salary_per_annum, :salary_per_month, :addrress, :state,:pincode,:country,
         :gender, :mobile, :blood_type, :emergency_contact_name, 
         :emergency_contact_number, :primary_skill, :secondary_skill_1, 
         :secondary_skill_2, :notice_period_in_days, :role, :email, :password,
          :password_confirmation,:employee_id,:department,:designation,:bank_account,:bank_name,:bank_branch,:ifsc_code,:total_deductions)
    end

    # def is_admin?
    #   unless session[:user_type]=='admin'
    #     redirect_to root_path
        
    #   end
    # end
    # def is_user?
    #   unless session[:user_id]==@user.id ||session[:user_type]=='admin'
    #     redirect_to root_path
    #   end
    # end

    
end

