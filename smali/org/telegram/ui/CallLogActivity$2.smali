.class Lorg/telegram/ui/CallLogActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "CallLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CallLogActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CallLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CallLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/CallLogActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 193
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/CallLogActivity$2;->this$0:Lorg/telegram/ui/CallLogActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/CallLogActivity;->finishFragment()V

    .line 196
    :cond_0
    return-void
.end method
