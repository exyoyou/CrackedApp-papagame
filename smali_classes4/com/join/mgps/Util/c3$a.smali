.class Lcom/join/mgps/Util/c3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field final synthetic h:Lcom/join/mgps/Util/c3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/Util/c3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/c3$a;->h:Lcom/join/mgps/Util/c3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/Util/c3;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "id",
            "address",
            "name",
            "descript",
            "time",
            "number",
            "score"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/c3$a;->h:Lcom/join/mgps/Util/c3;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/join/mgps/Util/c3$a;->a:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/c3$a;->b:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/Util/c3$a;->c:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/Util/c3$a;->d:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/Util/c3$a;->e:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/Util/c3$a;->f:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/Util/c3$a;->g:Ljava/lang/String;

    return-void
.end method
