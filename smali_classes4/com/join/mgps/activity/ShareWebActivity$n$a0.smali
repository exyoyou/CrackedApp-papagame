.class Lcom/join/mgps/activity/ShareWebActivity$n$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n;->setScreenLandOrPort(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$screenLandOrPort"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 22
    .line 23
    invoke-static {v0, v2}, Lcom/join/mgps/activity/ShareWebActivity;->access$1402(Lcom/join/mgps/activity/ShareWebActivity;I)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity;->v_status:Landroid/view/View;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/activity/ShareWebActivity;->access$1500(Lcom/join/mgps/activity/ShareWebActivity;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->access$1402(Lcom/join/mgps/activity/ShareWebActivity;I)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->access$1402(Lcom/join/mgps/activity/ShareWebActivity;I)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 78
    .line 79
    invoke-static {v0, v3}, Lcom/join/mgps/activity/ShareWebActivity;->access$1402(Lcom/join/mgps/activity/ShareWebActivity;I)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$a0;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->access$1402(Lcom/join/mgps/activity/ShareWebActivity;I)I

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method
