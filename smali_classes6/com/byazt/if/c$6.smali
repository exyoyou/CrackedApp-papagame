.class public Lcom/byazt/if/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/plugin/Plugin$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1cf,
        0x66
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/if/c;->bindService(Landroid/content/Intent;Lcom/byazt/uk/x;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic n:Lcom/byazt/if/c;

.field public final synthetic tt:Lcom/byazt/uk/x;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Lcom/byazt/if/c;Landroid/content/Intent;Lcom/byazt/uk/x;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/if/c$6;->n:Lcom/byazt/if/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/if/c$6;->c:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/if/c$6;->tt:Lcom/byazt/uk/x;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/if/c$6;->ve:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/if/c$6;->uj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/byazt/if/c$6;->n:Lcom/byazt/if/c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/if/c$6;->c:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/if/c$6;->tt:Lcom/byazt/uk/x;

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/if/c$6;->ve:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/byazt/if/c$6;->uj:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/if/c;->tt(Lcom/byazt/if/c;Landroid/content/Intent;Lcom/byazt/uk/x;ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
