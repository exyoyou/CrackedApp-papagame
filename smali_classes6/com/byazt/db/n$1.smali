.class public Lcom/byazt/db/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bo/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2de,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/db/n;->callMethod(ILcom/bykv/vk/openvk/api/proto/PluginValueSet;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:F

.field public final synthetic uj:Lcom/byazt/db/n;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/db/n;ZFLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/db/n$1;->uj:Lcom/byazt/db/n;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/db/n$1;->c:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/db/n$1;->tt:F

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/db/n$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/db/n$1;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public tt()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/db/n$1;->tt:F

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/db/n$1;->ve:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
