class Blog < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  # --------------------------オブジェクトの作成-----------------------
    before_validation :before_validation_callback
    after_validation :after_validation_callback
    before_save :before_save_callback
    # around_save :around_save_callback
    before_create :before_create_callback
    # around_create :around_create_callback
    after_create :after_create_callback
    after_save :after_save_callback
    after_commit :after_commit_callback
    after_rollback :after_rollback_callback
  # --------------------------オブジェクトの更新-----------------------
    # before_validation
    # after_validation
    # before_save
    # around_save
    before_update :before_update_callback
    # around_update :around_update_callback
    after_update :after_update_callback
    # after_save
    # after_commit
    # after_rollback
  # --------------------------オブジェクトの削除-----------------------
    before_destroy :before_destroy_callback
    # around_destroy :around_destroy_callback
    after_destroy :after_destroy_callback
    # after_commit
    # after_rollback

  # --------------------------オブジェクトの作成-----------------------

  def before_validation_callback
    puts('----------before_validationをコール----------')
  end

  def after_validation_callback
    puts('----------after_validationをコール----------')
  end

  def before_save_callback
    puts('----------before_saveをコール----------')
  end

  # def around_save_callback
  #   puts('----------around_saveをコール----------')
  # end

  def before_create_callback
    puts('----------before_createをコール----------')
  end

  # def around_create_callback
  #   puts('----------around_createをコール----------')
  # end

  def after_create_callback
    puts('----------after_createをコール----------')
  end

  def after_save_callback
    puts('----------after_saveをコール----------')
  end

  def after_commit_callback
    puts('----------after_commitをコール----------')
  end

  def after_rollback_callback
    puts('----------after_rollbackをコール----------')
  end

  # --------------------------オブジェクトの更新-----------------------

  def before_update_callback
    puts('----------before_updateをコール----------')
  end

  # def around_update_callback
  #   puts('----------around_update----------')
  # end

  def after_update_callback
    puts('----------after_updateをコール----------')
  end

  # --------------------------オブジェクトの削除-----------------------

  def before_destroy_callback
    puts('----------before_destroyをコール----------')
  end

  # def around_destroy_callback
  #   puts('----------around_destroy----------')
  # end

  def after_destroy_callback
    puts('----------after_destroyをコール----------')
  end

end
