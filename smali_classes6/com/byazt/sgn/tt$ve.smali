.class public Lcom/byazt/sgn/tt$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd3,
        0x207
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/sgn/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ve"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sgn/tt;

.field public tt:Ljava/lang/String;

.field public ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/sgn/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sgn/tt$ve;->c:Lcom/byazt/sgn/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/sgn/tt$ve;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/sgn/tt$ve;->ve:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/tt$ve;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/sgn/tt$ve;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
