.class public Lcom/xinzhu/overmind/server/am/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/xinzhu/overmind/server/am/a;

.field public final b:Lcom/xinzhu/overmind/server/am/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/server/am/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/i;->a:Lcom/xinzhu/overmind/server/am/a;

    .line 10
    .line 11
    new-instance v0, Lcom/xinzhu/overmind/server/am/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/server/am/i;->b:Lcom/xinzhu/overmind/server/am/c;

    .line 17
    .line 18
    return-void
.end method
