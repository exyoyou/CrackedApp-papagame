.class public final Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/pad/HMOpView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMOpView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMOpView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,762:1\n1869#2,2:763\n1#3:765\n*S KotlinDebug\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMOpView$1\n*L\n78#1:763,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/pad/HMOpView$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onScroll",
        "",
        "e1",
        "Landroid/view/MotionEvent;",
        "e2",
        "distanceX",
        "",
        "distanceY",
        "onDown",
        "e",
        "onSingleTapUp",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMOpView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMOpView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,762:1\n1869#2,2:763\n1#3:765\n*S KotlinDebug\n*F\n+ 1 HMOpView.kt\ncom/join/kotlin/module/hmcloud/pad/HMOpView$1\n*L\n78#1:763,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;


# direct methods
.method constructor <init>(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->isEditMode()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$setEditItem$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$setDraggingView$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Iterable;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/view/View;

    .line 60
    .line 61
    invoke-static {v2, p1}, Lcom/join/kotlin/utils/extention/ViewKt;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$setDraggingView$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    instance-of v0, v0, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v3, "null cannot be cast to non-null type com.join.mgps.dto.hmcloud.HMKeyItem"

    .line 83
    .line 84
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    check-cast v0, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v3, "null cannot be cast to non-null type kotlin.String"

    .line 95
    .line 96
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    check-cast v0, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-static {v1, v0, v3, v4}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$findEditItem(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Ljava/lang/String;FF)Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_0
    invoke-static {v1, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$setEditItem$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    sub-float/2addr v0, v3

    .line 125
    invoke-static {v1, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$setOffsetX$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;F)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    sub-float/2addr p1, v0

    .line 137
    invoke-static {v1, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$setOffsetY$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;F)V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    return p1

    .line 142
    :cond_2
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    const-string v0, "e2"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->isEditMode()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$getDraggingView$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_0
    float-to-int p2, p3

    .line 25
    neg-int p2, p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 27
    .line 28
    .line 29
    float-to-int p2, p4

    .line 30
    neg-int p2, p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$getEditItem$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;)Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p3, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 43
    .line 44
    invoke-static {p3, p2, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$applyNewViewLayout(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->isEditMode()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$getEditItem$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;)Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->getOnEditKey()Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpView$1;->this$0:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {p1, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->access$setEditItem$p(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method
