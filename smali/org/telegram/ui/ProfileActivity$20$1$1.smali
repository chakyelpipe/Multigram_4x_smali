.class Lorg/telegram/ui/ProfileActivity$20$1$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$20$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ProfileActivity$20$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$20$1;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ProfileActivity$20$1;

    .prologue
    .line 1629
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$20$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$20$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$20$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$20$1;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$20;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$20$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$20$1;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$20$1;->this$1:Lorg/telegram/ui/ProfileActivity$20;

    iget v1, v1, Lorg/telegram/ui/ProfileActivity$20;->val$uid:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->getUserAbout(I)V

    .line 1635
    return-void
.end method
