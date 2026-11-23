.class public final synthetic Lcom/xinzhu/overmind/server/pm/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/xinzhu/overmind/server/pm/t;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xinzhu/overmind/server/pm/t;Ljava/lang/Object;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/s;->b:Lcom/xinzhu/overmind/server/pm/t;

    iput-object p2, p0, Lcom/xinzhu/overmind/server/pm/s;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/xinzhu/overmind/server/pm/s;->d:I

    iput-boolean p4, p0, Lcom/xinzhu/overmind/server/pm/s;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/s;->b:Lcom/xinzhu/overmind/server/pm/t;

    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/s;->c:Ljava/lang/Object;

    iget v2, p0, Lcom/xinzhu/overmind/server/pm/s;->d:I

    iget-boolean v3, p0, Lcom/xinzhu/overmind/server/pm/s;->e:Z

    invoke-static {v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/pm/RegisteredServicesCache;->g(Lcom/xinzhu/overmind/server/pm/t;Ljava/lang/Object;IZ)V

    return-void
.end method
