.class Lcom/join/mgps/activity/FullShareWebActivity$o$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$o;->setScreenLandOrPort(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/FullShareWebActivity$o;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$o;I)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->b:I

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1500(Lcom/join/mgps/activity/FullShareWebActivity;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1402(Lcom/join/mgps/activity/FullShareWebActivity;I)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1402(Lcom/join/mgps/activity/FullShareWebActivity;I)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 56
    .line 57
    invoke-static {v0, v2}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1402(Lcom/join/mgps/activity/FullShareWebActivity;I)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$o$q;->c:Lcom/join/mgps/activity/FullShareWebActivity$o;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$o;->c:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$1402(Lcom/join/mgps/activity/FullShareWebActivity;I)I

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method
