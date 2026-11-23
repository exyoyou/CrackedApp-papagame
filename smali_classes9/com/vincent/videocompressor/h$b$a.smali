.class Lcom/vincent/videocompressor/h$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vincent/videocompressor/VideoController$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vincent/videocompressor/h$b;->b([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vincent/videocompressor/h$b;


# direct methods
.method constructor <init>(Lcom/vincent/videocompressor/h$b;)V
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
    iput-object p1, p0, Lcom/vincent/videocompressor/h$b$a;->a:Lcom/vincent/videocompressor/h$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percent"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/h$b$a;->a:Lcom/vincent/videocompressor/h$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Float;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/vincent/videocompressor/h$b;->a(Lcom/vincent/videocompressor/h$b;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
