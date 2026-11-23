.class Lcom/Hilt_MApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/hilt/android/internal/managers/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Hilt_MApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/Hilt_MApplication;


# direct methods
.method constructor <init>(Lcom/Hilt_MApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/Hilt_MApplication$a;->a:Lcom/Hilt_MApplication;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcom/f;->a()Lcom/f$f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ldagger/hilt/android/internal/modules/c;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/Hilt_MApplication$a;->a:Lcom/Hilt_MApplication;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ldagger/hilt/android/internal/modules/c;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/f$f;->a(Ldagger/hilt/android/internal/modules/c;)Lcom/f$f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/f$f;->b()Lcom/l$i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
