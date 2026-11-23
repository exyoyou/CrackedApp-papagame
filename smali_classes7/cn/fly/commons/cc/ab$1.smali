.class Lcn/fly/commons/cc/ab$1;
.super Lcn/fly/commons/cc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/commons/cc/ab;->a(Ljava/lang/String;ILcn/fly/commons/cc/t;)Lcn/fly/commons/cc/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcn/fly/commons/cc/u;IILcn/fly/commons/cc/t;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcn/fly/commons/cc/ab;-><init>(Ljava/lang/String;ILcn/fly/commons/cc/u;IILcn/fly/commons/cc/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method
