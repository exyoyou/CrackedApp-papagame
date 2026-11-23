.class Lcom/join/mgps/Util/g0$d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/g0$d0;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/Util/g0$d0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g0$d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0$d0$a;->b:Lcom/join/mgps/Util/g0$d0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/g0$d0$a;->b:Lcom/join/mgps/Util/g0$d0;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/Util/g0$d0;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/join/mgps/Util/g0$d0;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/join/mgps/Util/g0$d0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/Util/g0$d0;->e:Lcom/join/mgps/Util/g0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/g0;->c(Lcom/join/mgps/Util/g0;)Lcom/join/android/app/common/dialog/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/android/app/common/dialog/c;->c()Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v2, v3, v0}, Lcom/join/mgps/Util/j2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/join/mgps/event/d;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/Util/g0$d0$a;->b:Lcom/join/mgps/Util/g0$d0;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/join/mgps/Util/g0$d0;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lcom/join/mgps/event/d;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
