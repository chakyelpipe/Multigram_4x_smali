.class Lorg/telegram/ui/ChannelEditInfoActivity$12;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelEditInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelEditInfoActivity;

    .prologue
    .line 643
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 646
    iget-object v1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->signMessages:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1500(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/ui/ChannelEditInfoActivity;->signMessages:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1502(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 647
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/ChannelEditInfoActivity$12;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    # getter for: Lorg/telegram/ui/ChannelEditInfoActivity;->signMessages:Z
    invoke-static {v0}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$1500(Lorg/telegram/ui/ChannelEditInfoActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 648
    return-void

    .line 646
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
