.class Lorg/telegram/ui/ThemingChatActivity$3$14;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingChatActivity$3;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingChatActivity$3;

    .prologue
    .line 682
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$3$14;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingChatActivity$3$14;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$3$14;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$3$14;->val$key:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemingChatActivity;->access$300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V

    .line 686
    return-void
.end method
