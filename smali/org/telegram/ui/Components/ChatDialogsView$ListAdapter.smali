.class Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 980
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 981
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->mContext:Landroid/content/Context;

    .line 982
    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;

    .prologue
    .line 971
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->getTitleRes()I

    move-result v0

    return v0
.end method

.method private getTitleRes()I
    .locals 1

    .prologue
    .line 1042
    const v0, 0x7f07013f

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2600(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1032
    :goto_0
    return v0

    .line 1030
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1032
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2500(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1038
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 994
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2500(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 995
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2500(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 999
    .local v4, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_0
    if-eqz v4, :cond_0

    .line 1000
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;

    .line 1001
    .local v0, "cell":Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 1002
    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1003
    .local v1, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v5, :cond_2

    .line 1004
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setIsAdmin(I)V

    .line 1019
    .end local v1    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :goto_1
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    int-to-long v2, v5

    .line 1021
    .local v2, "did":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setTag(Ljava/lang/Object;)V

    .line 1022
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->hideCounter(Z)V

    .line 1023
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setDialog(J)V

    .line 1025
    .end local v0    # "cell":Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
    .end local v2    # "did":J
    :cond_0
    return-void

    .line 997
    .end local v4    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatDialogsView;->access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v4    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto :goto_0

    .line 1005
    .restart local v0    # "cell":Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
    .restart local v1    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_2
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-eqz v5, :cond_3

    .line 1006
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setIsAdmin(I)V

    goto :goto_1

    .line 1008
    :cond_3
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setIsAdmin(I)V

    goto :goto_1

    .line 1011
    .end local v1    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_4
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v5, :cond_5

    .line 1012
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setIsAdmin(I)V

    goto :goto_1

    .line 1013
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2600(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v5, :cond_6

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v5, :cond_6

    .line 1014
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setIsAdmin(I)V

    goto :goto_1

    .line 1016
    :cond_6
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setIsAdmin(I)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 986
    new-instance v0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    .line 987
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2100(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter$Holder;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter$Holder;-><init>(Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;Landroid/view/View;)V

    return-object v1
.end method
