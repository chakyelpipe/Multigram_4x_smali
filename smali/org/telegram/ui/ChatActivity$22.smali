.class Lorg/telegram/ui/ChatActivity$22;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 2169
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didLongPressedOnSubDialog(JI)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 2197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2198
    .local v0, "args":Landroid/os/Bundle;
    long-to-int v2, p1

    .line 2199
    .local v2, "lower_part":I
    if-ltz p3, :cond_4

    .line 2200
    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v1, v4

    .line 2201
    .local v1, "high_part":I
    if-eqz v2, :cond_3

    .line 2202
    if-lez v2, :cond_2

    .line 2203
    const-string/jumbo v4, "user_id"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2211
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2222
    .end local v1    # "high_part":I
    :cond_1
    :goto_1
    return-void

    .line 2204
    .restart local v1    # "high_part":I
    :cond_2
    if-gez v2, :cond_0

    .line 2205
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-int v5, v2

    invoke-virtual {v4, v5, v6, v6}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 2206
    const-string/jumbo v4, "chat_id"

    neg-int v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2209
    :cond_3
    const-string/jumbo v4, "enc_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2213
    .end local v1    # "high_part":I
    :cond_4
    if-lez v2, :cond_1

    .line 2214
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2215
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_1

    .line 2216
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAdapter:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2217
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAdapter:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v4

    const/4 v5, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->createAvatarClickMenu(ILorg/telegram/tgnet/TLRPC$User;Z)V
    invoke-static {v4, v2, v3, v5}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$9900(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;ILorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_1
.end method

.method public didPressedOnBtn(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateChatDialogsView(Z)V
    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;Z)V

    .line 2193
    return-void
.end method

.method public didPressedOnSubDialog(J)V
    .locals 9
    .param p1, "did"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2172
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatDialogsView:Lorg/telegram/ui/Components/ChatDialogsView;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatDialogsView;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/ChatDialogsView;->needRefresh(Z)V

    .line 2173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2174
    .local v0, "args":Landroid/os/Bundle;
    long-to-int v2, p1

    .line 2175
    .local v2, "lower_part":I
    const/16 v5, 0x20

    shr-long v6, p1, v5

    long-to-int v1, v6

    .line 2176
    .local v1, "high_part":I
    if-eqz v2, :cond_3

    .line 2177
    if-lez v2, :cond_2

    .line 2178
    const-string/jumbo v5, "user_id"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2186
    :cond_0
    :goto_0
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "show_quickBar"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2187
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    if-eqz v7, :cond_4

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    if-eqz v7, :cond_4

    :goto_1
    invoke-virtual {v5, v6, v3}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 2188
    return-void

    .line 2179
    :cond_2
    if-gez v2, :cond_0

    .line 2180
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v2

    invoke-virtual {v5, v6, v4, v4}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 2181
    const-string/jumbo v5, "chat_id"

    neg-int v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2184
    :cond_3
    const-string/jumbo v5, "enc_id"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 2187
    goto :goto_1
.end method
