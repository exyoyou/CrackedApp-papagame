.class public Lcom/byazt/si/c$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sz/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x260,
        0x36c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/si/c$c;->c(Landroid/view/MotionEvent;Ljava/lang/String;Lcom/byazt/ga/i;Ljava/lang/String;Lorg/json/JSONArray;ILjava/lang/String;Lcom/byazt/qm/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qm/c;

.field public final synthetic tt:Lcom/byazt/si/c$c;


# direct methods
.method public constructor <init>(Lcom/byazt/si/c$c;Lcom/byazt/qm/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/si/c$c$1;->tt:Lcom/byazt/si/c$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/si/c$c$1;->c:Lcom/byazt/qm/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xj/ve;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/pm/a$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/si/c$c$1;->c:Lcom/byazt/qm/c;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/byazt/qm/c;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
