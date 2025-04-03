seqfile = ../Dame-Dvir_Dlum-Dnov_bam-CDS-unique_prank.best.fas * sequence data filename
     treefile = ../Dame-Dvir_Dlum-Dnov_bam-CDS-unique_prank.best.dnd * tree structure file name
      outfile = Dame-Dvir_Dlum-Dnov_bam-codeML_10-07-22    * main result file name

        noisy = 9   * 0,1,2,3,9: how much rubbish on the screen
      verbose = 2   * 0: concise; 1: detailed, 2: too much
      runmode = 0   * 0: user tree;  1: semi-automatic;  2: automatic
                    * 3: StepwiseAddition; (4,5):PerturbationNNI; -2: pairwise

      seqtype = 1   * 1:codons; 2:AAs; 3:codons-->AAs
    CodonFreq = 2   *0:1/61 each, 1:F1X4, 2:F3X4, 3:codon table

        clock = 0   * 0:no clock, 1:clock; 2:local clock; 3:CombinedAnalysis
       aaDist = 0   * 0:equal, +:geometric; -:linear, 1-6:G1974,Miyata,c,p,v,a

        model = 0
                    * models for codons:
                    * 0:one, 1:b, 2:2 or more dN/dS ratios for branches
                    * models for AAs or codon-translated AAs:
                    * 0:poisson, 1:proportional, 2:Empirical, 3:Empirical+F
                    * 6:FromCodon, 7:AAClasses, 8:REVaa_0, 9:REVaa(nr=189)
	NSsites = 0 *0:one w; 1:neutral; 2:selection; 3:discrete;4:freqs;
		    *5:gamma; 6:2gamma; 7:beta; 8:beta&w; 9:beta&gamma;
		    *10:beta&gamma+1; 11:beta&normal>1; 12:0&2normal>1;
		    *13:3normal>0	

        icode = 0   * 0:universal code; 1:mammalian mt; 2-10:see below


        getSE = 0   * 0: don't want them, 1: want S.E.s of estimates

 RateAncestor = 1   * (0,1,2): rates (alpha>0) or ancestral states (1 or 2)

   Small_Diff = .5e-6
    cleandata = 0   * remove sites with ambiguity data (1:yes, 0:no)?
       method = 1   * Optimization method 0: simultaneous; 1: one branch a time
