.class public final Lcom/byazt/zy/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6a2,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/zy/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zy/u;",
            ">;"
        }
    .end annotation
.end field

.field public final tt:Lcom/byazt/zy/rl;


# direct methods
.method private constructor <init>(Lcom/byazt/zy/rl;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/zy/c$c;->c:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/byazt/zy/c$c;->tt:Lcom/byazt/zy/rl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/zy/rl;Lcom/byazt/zy/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/zy/c$c;-><init>(Lcom/byazt/zy/rl;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/zy/c$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zy/c$c;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/zy/c$c;)Lcom/byazt/zy/rl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zy/c$c;->tt:Lcom/byazt/zy/rl;

    .line 2
    .line 3
    return-object p0
.end method
