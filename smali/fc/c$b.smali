.class public Lfc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Lfc/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfc/c$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lfc/c$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfc/c$b;->c:Lfc/c$a;

    .line 10
    .line 11
    return-void
.end method
