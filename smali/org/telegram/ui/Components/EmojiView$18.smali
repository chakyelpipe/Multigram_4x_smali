.class Lorg/telegram/ui/Components/EmojiView$18;
.super Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downX:F

.field downY:F

.field draggingHorizontally:Z

.field draggingVertically:Z

.field first:Z

.field lastTranslateX:F

.field lastX:F

.field startedScroll:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field final touchslop:I

.field vTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 898
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;-><init>(Landroid/content/Context;)V

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    .line 904
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$18;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$18;->touchslop:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 911
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$18;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$18;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 914
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 915
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingHorizontally:Z

    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    .line 916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$18;->downX:F

    .line 917
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$18;->downY:F

    .line 932
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0

    .line 919
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingHorizontally:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$18;->downY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$18;->touchslop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 921
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    .line 922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$18;->downY:F

    .line 923
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragStart()V

    .line 924
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v1, :cond_2

    .line 925
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 926
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 937
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    if-eqz v6, :cond_0

    .line 938
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    .line 941
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 942
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingHorizontally:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    .line 943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->downX:F

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->downY:F

    .line 960
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    if-eqz v6, :cond_8

    .line 961
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->vTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_2

    .line 962
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->vTracker:Landroid/view/VelocityTracker;

    .line 963
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_7

    .line 965
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->vTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 966
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 967
    .local v3, "velocity":F
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->vTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 968
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->vTracker:Landroid/view/VelocityTracker;

    .line 969
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 970
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragEnd(F)V

    .line 974
    :goto_1
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    .line 975
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingHorizontally:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    .line 1019
    .end local v3    # "velocity":F
    :goto_2
    return v5

    .line 946
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingHorizontally:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 947
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$18;->downX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$18;->touchslop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_5

    .line 948
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingHorizontally:Z

    goto :goto_0

    .line 949
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$18;->downY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$18;->touchslop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 950
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->downY:F

    .line 952
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragStart()V

    .line 953
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v6, :cond_1

    .line 954
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 955
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    goto/16 :goto_0

    .line 972
    .restart local v3    # "velocity":F
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDragCancel()V

    goto :goto_1

    .line 977
    .end local v3    # "velocity":F
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$DragListener;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$18;->downY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-interface {v4, v6}, Lorg/telegram/ui/Components/EmojiView$DragListener;->onDrag(I)V

    goto :goto_2

    .line 981
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTranslationX()F

    move-result v2

    .line 982
    .local v2, "newTranslationX":F
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getScrollX()I

    move-result v6

    if-nez v6, :cond_9

    cmpl-float v6, v2, v8

    if-nez v6, :cond_9

    .line 983
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-nez v6, :cond_f

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    cmpg-float v6, v6, v8

    if-gez v6, :cond_f

    .line 984
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 985
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    .line 986
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getTranslationX()F

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastTranslateX:F

    .line 995
    :cond_9
    :goto_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v6, :cond_a

    .line 996
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    sub-float/2addr v6, v7

    add-float/2addr v6, v2

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastTranslateX:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 998
    .local v0, "dx":I
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    .line 999
    iput v2, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastTranslateX:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    .end local v0    # "dx":I
    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v9, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_c

    .line 1012
    :cond_b
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$18;->first:Z

    .line 1013
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingHorizontally:Z

    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->draggingVertically:Z

    .line 1014
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v6, :cond_c

    .line 1015
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 1016
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    .line 1019
    :cond_c
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-nez v6, :cond_d

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    move v4, v5

    :cond_e
    move v5, v4

    goto/16 :goto_2

    .line 988
    :cond_f
    iget-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    if-eqz v6, :cond_9

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->lastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v8

    if-lez v6, :cond_9

    .line 989
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 990
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 991
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    goto :goto_3

    .line 1000
    .restart local v0    # "dx":I
    :catch_0
    move-exception v1

    .line 1002
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$18;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1006
    :goto_5
    iput-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView$18;->startedScroll:Z

    .line 1007
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1003
    :catch_1
    move-exception v6

    goto :goto_5
.end method
