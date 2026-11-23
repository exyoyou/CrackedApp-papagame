.class public Lcom/byazt/cf/sp;
.super Lcom/byazt/cf/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x5b
    }
.end annotation


# static fields
.field public static final ve:Lcom/byazt/cf/sp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/cf/sp;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/byazt/cf/sp;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/byazt/cf/sp;->ve:Lcom/byazt/cf/sp;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/cf/ve;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/cf/sp;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/cf/sp;->ve:Lcom/byazt/cf/sp;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/dj/tt;Ljava/lang/String;ILcom/byazt/cf/uj;)V
    .locals 7

    .line 2
    new-instance v3, Lcom/byazt/cjm/ve;

    invoke-direct {v3}, Lcom/byazt/cjm/ve;-><init>()V

    .line 3
    invoke-virtual {v3, p2}, Lcom/byazt/cjm/ve;->c(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    .line 4
    invoke-virtual {v3, p3}, Lcom/byazt/cjm/ve;->c(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/cf/ve;->c(Lcom/byazt/dj/tt;Lcom/byazt/cf/uj;Lcom/byazt/cjm/ve;Lcom/byazt/rob/uj;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tt()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
