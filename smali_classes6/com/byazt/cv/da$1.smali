.class public Lcom/byazt/cv/da$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/cv/z;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x255,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cv/da;->setShakeViewListener(Lcom/byazt/am/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/am/a;

.field public final synthetic tt:Lcom/byazt/cv/da;


# direct methods
.method public constructor <init>(Lcom/byazt/cv/da;Lcom/byazt/am/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cv/da$1;->tt:Lcom/byazt/cv/da;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cv/da$1;->c:Lcom/byazt/am/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/da$1;->c:Lcom/byazt/am/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/am/a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
