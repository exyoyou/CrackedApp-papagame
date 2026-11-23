.class public final Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onDown",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "onFling",
        "e1",
        "e2",
        "velocityX",
        "",
        "velocityY",
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


# instance fields
.field final synthetic $FLIP_DISTANCE:I

.field final synthetic this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;


# direct methods
.method constructor <init>(ILcom/join/kotlin/ui/userrecom/UserRecomendActivity;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->$FLIP_DISTANCE:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    const-string p3, "e2"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p4, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    sub-float v0, p4, p1

    .line 30
    .line 31
    iget v1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->$FLIP_DISTANCE:I

    .line 32
    .line 33
    int-to-float v2, v1

    .line 34
    const/4 v3, 0x1

    .line 35
    cmpl-float v0, v0, v2

    .line 36
    .line 37
    if-gtz v0, :cond_4

    .line 38
    .line 39
    sub-float/2addr p1, p4

    .line 40
    int-to-float p4, v1

    .line 41
    cmpl-float p1, p1, p4

    .line 42
    .line 43
    if-gtz p1, :cond_4

    .line 44
    .line 45
    sub-float p1, p3, p2

    .line 46
    .line 47
    int-to-float p4, v1

    .line 48
    cmpl-float p1, p1, p4

    .line 49
    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    sub-float/2addr p2, p3

    .line 54
    int-to-float p1, v1

    .line 55
    cmpl-float p1, p2, p1

    .line 56
    .line 57
    if-lez p1, :cond_3

    .line 58
    .line 59
    return v3

    .line 60
    :cond_3
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/kotlin/ui/userrecom/UserRecomendActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    return v3
.end method
