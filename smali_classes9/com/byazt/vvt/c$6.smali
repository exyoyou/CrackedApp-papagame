.class public Lcom/byazt/vvt/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd2,
        0x66
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/vvt/c;->c(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/vvt/c;


# direct methods
.method public constructor <init>(Lcom/byazt/vvt/c;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vvt/c$6;->tt:Lcom/byazt/vvt/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/vvt/c$6;->c:Z

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
    instance-of v0, p1, Lcom/byazt/ha/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/tt;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/byazt/vvt/c$6;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p1, Lcom/byazt/ha/tt;->tt:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method
