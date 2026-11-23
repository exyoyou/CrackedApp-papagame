.class Lcom/join/mgps/dialog/y1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/y1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/join/mgps/dialog/y1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/dialog/y1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "value"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y1$c;->c:Lcom/join/mgps/dialog/y1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/join/mgps/dialog/y1$c;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dialog/y1$c;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y1$c;->b:Z

    .line 2
    .line 3
    return-void
.end method
