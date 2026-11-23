.class public Lcom/byazt/cf/ve$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x12,
        0x1d9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cf/ve;->c(Ljava/lang/String;Ljava/lang/String;ZLcom/byazt/lq/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/cf/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/cf/ve;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cf/ve$7;->tt:Lcom/byazt/cf/ve;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cf/ve$7;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/ve;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/cf/ve$7;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
