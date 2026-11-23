.class public Lcom/xinzhu/overmind/server/k;
.super Lcom/xinzhu/overmind/server/f$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# static fields
.field private static sService:Lcom/xinzhu/overmind/server/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/k;->sService:Lcom/xinzhu/overmind/server/k;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/f$b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/k;->sService:Lcom/xinzhu/overmind/server/k;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public systemReady()V
    .locals 0

    return-void
.end method
