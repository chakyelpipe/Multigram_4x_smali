.class Lorg/telegram/ui/ThemingDrawerActivity$3$12;
.super Ljava/lang/Object;
.source "ThemingDrawerActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingDrawerActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingDrawerActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingDrawerActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingDrawerActivity$3;

    .prologue
    .line 434
    iput-object p1, p0, Lorg/telegram/ui/ThemingDrawerActivity$3$12;->this$1:Lorg/telegram/ui/ThemingDrawerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 437
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->drawerNameColor:I

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity$3$12;->this$1:Lorg/telegram/ui/ThemingDrawerActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingDrawerActivity$3;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    const-string/jumbo v1, "drawerNameColor"

    # invokes: Lorg/telegram/ui/ThemingDrawerActivity;->commitInt(Ljava/lang/String;I)V
    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$300(Lorg/telegram/ui/ThemingDrawerActivity;Ljava/lang/String;I)V

    .line 439
    return-void
.end method
