.class Lorg/telegram/ui/ChannelEditInfoActivity$15$1;
.super Ljava/lang/Object;
.source "ChannelEditInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelEditInfoActivity$15;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelEditInfoActivity$15;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelEditInfoActivity$15;

    .prologue
    .line 817
    iput-object p1, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iput-object p2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 820
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2402(Lorg/telegram/ui/ChannelEditInfoActivity;Z)Z

    .line 821
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_0

    .line 822
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2500(Lorg/telegram/ui/ChannelEditInfoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 826
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2600(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2500(Lorg/telegram/ui/ChannelEditInfoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 828
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2500(Lorg/telegram/ui/ChannelEditInfoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 829
    iget-object v2, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;

    .line 831
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_chats;
    const/4 v0, 0x0

    :goto_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 832
    new-instance v1, Lorg/telegram/ui/Cells/AdminedChannelCell;

    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChannelEditInfoActivity$15$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelEditInfoActivity$15$1$1;-><init>(Lorg/telegram/ui/ChannelEditInfoActivity$15$1;)V

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 873
    .local v1, "adminedChannelCell":Lorg/telegram/ui/Cells/AdminedChannelCell;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/AdminedChannelCell;->setChannel(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 874
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2500(Lorg/telegram/ui/ChannelEditInfoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2700(Lorg/telegram/ui/ChannelEditInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, -0x1

    const/16 v6, 0x48

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v4, v5

    .line 873
    goto :goto_3

    .line 877
    .end local v1    # "adminedChannelCell":Lorg/telegram/ui/Cells/AdminedChannelCell;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelEditInfoActivity$15$1;->this$1:Lorg/telegram/ui/ChannelEditInfoActivity$15;

    iget-object v3, v3, Lorg/telegram/ui/ChannelEditInfoActivity$15;->this$0:Lorg/telegram/ui/ChannelEditInfoActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChannelEditInfoActivity;->access$2100(Lorg/telegram/ui/ChannelEditInfoActivity;)V

    goto/16 :goto_0
.end method
