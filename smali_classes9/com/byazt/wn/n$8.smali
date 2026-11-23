.class public Lcom/byazt/wn/n$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bo/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3a,
        0x247
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wn/n;->callManager(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic n:Lcom/byazt/wn/n;

.field public final synthetic tt:F

.field public final synthetic uj:Ljava/util/Map;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/wn/n;ZFLjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wn/n$8;->n:Lcom/byazt/wn/n;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/wn/n$8;->c:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/wn/n$8;->tt:F

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/wn/n$8;->ve:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/wn/n$8;->uj:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/wn/n$8;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/wn/n$8;->tt:F

    .line 2
    .line 3
    return v0
.end method

.method public uj()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/n$8;->uj:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wn/n$8;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
