.class Lorg/telegram/ui/PhotoViewer$36$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$36;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$36;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$36;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$36;

    .prologue
    .line 2685
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$36$1;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2688
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$36$1;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$8500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->clearRecentHashtags()V

    .line 2689
    return-void
.end method
