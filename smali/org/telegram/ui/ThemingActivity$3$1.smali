.class Lorg/telegram/ui/ThemingActivity$3$1;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingActivity$3;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$1;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$1;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ThemingActivity;->access$300(Lorg/telegram/ui/ThemingActivity;I)V

    .line 211
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->updateAllColors()V

    .line 212
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 213
    return-void
.end method
