.class public interface abstract Lcom/byazt/o/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "START_DOCUMENT"

    .line 2
    .line 3
    const-string v1, "END_DOCUMENT"

    .line 4
    .line 5
    const-string v2, "START_TAG"

    .line 6
    .line 7
    const-string v3, "END_TAG"

    .line 8
    .line 9
    const-string v4, "TEXT"

    .line 10
    .line 11
    const-string v5, "CDSECT"

    .line 12
    .line 13
    const-string v6, "ENTITY_REF"

    .line 14
    .line 15
    const-string v7, "IGNORABLE_WHITESPACE"

    .line 16
    .line 17
    const-string v8, "PROCESSING_INSTRUCTION"

    .line 18
    .line 19
    const-string v9, "COMMENT"

    .line 20
    .line 21
    const-string v10, "DOCDECL"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/byazt/o/sp;->c:[Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract uj()Ljava/lang/String;
.end method

.method public abstract ve()I
.end method
