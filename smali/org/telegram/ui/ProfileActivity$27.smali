.class Lorg/telegram/ui/ProfileActivity$27;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 2425
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$27;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 2428
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$6900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2429
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2430
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    # getter for: Lorg/telegram/ui/ProfileActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 2431
    .local v0, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->clearItems()V

    .line 2432
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->this$0:Lorg/telegram/ui/ProfileActivity;

    # setter for: Lorg/telegram/ui/ProfileActivity;->animatingItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v1, v3}, Lorg/telegram/ui/ProfileActivity;->access$7002(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 2434
    .end local v0    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$27;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2435
    return-void
.end method
